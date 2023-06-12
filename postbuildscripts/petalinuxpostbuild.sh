#!/bin/bash -xe 
# das -xe sorgt dafür das vor der Ausführung eines Befehls, dieser geprinted wird. das -e lässt im Fehlerfall 
# das script mit dem entsprechendem exit-code "aussteigen"
# extract/copy/compress things to rootfs after petalinux-build
# SourcePath,DestPath enthält nur den path
# Aufruf: mit Ausgabedatei,da unglaublich viel Ausgabe (-v)
# erstmal in diese Ebene wechseln: 
# /mnt/project_zwo/2021.2/CLWaveCompleteTree/Linux/xlnx$
# ruft sub scripts auf. Die subscripts performen ihre Ausgaben in Textdateien.
#
# sudo postbuildscript/petalinuxpostbuild.sh postbuildscript/files /srv/tftp/nfsroot images/linux
#
# Das auto als 4. Parameter bewirkt, z.B. für den Buildserver, das der ganze Scheissdreck automatisch passiert
# ohne dieses Menu aufzurufen.
# automatisch extractrootfs,copyfiles2rootfs,compressrootfs
# sudo postbuildscript/petalinuxpostbuild.sh postbuildscript/files /srv/tftp/nfsroot images/linux auto
#
# all filenames are fixed here
# tested trusted apankoke@12/2022

# call all the holy moly sub scripts here:
echo "param0=$0 param1=$1 param2=$2 param3=$3 param4=$4"

kjkbgkjkg- sollte einen Fehler erzeugen :-)

param1=$1
CUR=$PWD
HomeDir=$Home
SourcePath=$CUR/$1
ScriptFiles=$CUR/$1/..
DestPath=$2
ImagesPath=$CUR/$3
Override=$4
Default="auto"


echo "SourcePath=$SourcePath DestPath=$DestPath ImagesPath=$ImagesPath Override=$Override"

echo "choices"

choices=('copy' 'extract' 'compress' 'all' 'exit')

if [ "$Override" = "$Default" ]
then
    echo "\$Override is="$Override
    echo "continue with default options...."
    echo "extract rootfs ..."
    $ScriptFiles/extractrootfs.sh $1 $2 $3 $4 > extractrootfs.txt
    echo "copy config files ..."
    $ScriptFiles/copyfiles2rootfs.sh $1 $2 $3 $4 > copyfiles.txt
    echo "compress it rootfs ..."
    $ScriptFiles/compressrootfs.sh $1 $2 $3 $4 > compressrootfs.txt
    echo "finished"
    exit 0
else
    echo "\$Override($Override) is NOT $Default!"
    echo "exit now!"
fi
# Custom `select` implementation that allows *empty* input.
# Pass the choices as individual arguments.
# Output is the chosen item, or "", if the user just pressed ENTER.
# Example:
#    choice=$(selectWithDefault 'one' 'two' 'three')
selectWithDefault() {

  local item i=0 numItems=$# 

  # Print numbered menu items, based on the arguments passed.
  for item; do         # Short for: for item in "$@"; do
    printf '%s\n' "$((++i))) $item"
  done >&2 # Print to stderr, as `select` does.

  # Prompt the user for the index of the desired item.
  while :; do
    printf %s "${PS3-#? }" >&2 # Print the prompt string to stderr, as `select` does.
    read -r index
    # Make sure that the input is either empty or that a valid index was entered.
    [[ -z $index ]] && break  # empty input
    (( index >= 1 && index <= numItems )) 2>/dev/null || { echo "Invalid selection. Please try again." >&2; continue; }
    break
  done

  # Output the selected item, if any.
  [[ -n $index ]] && printf %s "${@: index:1}"

}

# Der Versuch irgendwie ein default choice zu erreich. Ging alles nicht. Deshalb oben mit dem override argument gemacht.

# choice=$(selectWithDefault "${choices[@]}")
# case $choice in
#  'exit')
#   echo "exit choosen"
# esac

# Present the choices.
# The user chooses by entering the *number* before the desired choice.

select choice in "${choices[@]}"
do
 
  #choice=$(selectWithDefault "${choices[@]}")
  # echo "YOur choice is = ${choice}"
  # If an invalid number was chosen, $choice will be empty.
  # Report an error and prompt again.
  [[ -n $choice ]] || { echo "Invalid choice." >&2; continue; }
 
  # Examine the choice.
  # Note that it is the choice string itself, not its number
  # that is reported in $choice.
  case $choice in
    "copy")
      echo "copy config files now ...$ScriptFiles"
      # cd $ScriptFiles don't do it. because the check if directory of param 1 exist in the called script is not working!
     # Tstart=$(date "+%s.%N")
      $ScriptFiles/copyfiles2rootfs.sh $param1 $2 $3 > copyfiles.txt
      #sleep 1
      #Tend=$(date "+%s.%N")
      #let te=(Tend-Tstart)
      #echo "Elapsed: $te nanoseconds"
      echo "finished"
      ;;
      
    extract)
      echo "extract rootfs ..."
      $ScriptFiles/extractrootfs.sh $param1 $2 $3 > extractrootfs.txt
      echo "finished"
      ;;

    compress)
      echo "compress the rootfs ..."
      bash $ScriptFiles/compressrootfs.sh $param1 $2 $3 $4 > compressrootfs.txt
      echo "finished"
      ;;

    all)
      echo "extract rootfs ..."
      $ScriptFiles/extractrootfs.sh $1 $2 $3 $4 > extractrootfs.txt
      echo "copy config files ..."
      $ScriptFiles/copyfiles2rootfs.sh $1 $2 $3 $4 > copyfiles.txt
      echo "compress it rootfs ..."
      $ScriptFiles/compressrootfs.sh $1 $2 $3 $4 > compressrootfs.txt
      echo "finished"
     
      echo "now copy the tar ball archive to the apankoke linux computer in the office..."
      echo "this is only possible, if the comption vpn ist opened"
      # geht offenbar nur ins home verzeichnis, bzw in ein Verzeichnis auf das der user auch zuriff hat
      scp /srv/tftp/nfsroot/update-linux.tar apankoke@192.168.112.69:/home/apankoke

      echo "finished postbuildscript"
            ;;

    exit)
      echo "Exiting. Waste away from doing nothing."
      exit 0
  esac

  exit 0

  # Getting here means that a valid choice was made,
  # so break out of the select statement and continue below,
  # if desired.
  # Note that without an explicit break (or exit) statement, 
  # bash will continue to prompt.
  break

done

# ask user if he wanted todo
while true; do
    read -p "Do you wish to extract the rootfs and copy ist to the tftp server? " yn
    case $yn in
        [Yy]* ) ./extractrootfs.sh $1 $2 $3 $4; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";
    esac
done

echo "now copying some configfiles to the rootfs in tftp folder"
./copyfiles2rootfs.sh $1 $2 $3 $4

echo "now compress(zip) rootfs in tftp folder."
while true; do
    read -p "Do you wish to compress the rootfs? " yn
    case $yn in
        [Yy]* ) ./compressrootfs.sh $1 $2 $3 $4; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";
    esac
done

echo "now copy the tar ball archive to the apankoke linux computer in the office..."
echo "this is only possible, if the comption vpn ist opened"
# geht offenbar nur ins home verzeichnis, bzw in ein Verzeichnis auf das der user auch zuriff hat
scp /srv/tftp/nfsroot/update-linux.tar apankoke@192.168.112.69:/home/apankoke

echo "finished postbuildscript"