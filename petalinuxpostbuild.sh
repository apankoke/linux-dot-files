#!/bin/sh
# extract/copy/compress things to rootfs after petalinux-build
# SourcePath,DestPath enthält nur den path
# Aufruf: mit Ausgabedatei,da unglaublich viel Ausgabe (-v)
# erstmal in diese Ebene wechseln: 
# /mnt/project_zwo/2021.2/CLWaveCompleteTree/Linux/xlnx$
# sudo postbuildscript/petalinuxpostbuild.sh postbuildscript/files /srv/tftp/nfsroot images/linux > output.txt
# all filenames are fixed here
# tested trusted apankoke@12/2022

# call all the holy moly sub scripts here:
echo "param0=$0 param1=$1 param2=$2 param3=$3 param4=$4"

param1=$1
CUR=$PWD
HoemDir=$Home
SourcePath=$CUR/$1
ScriptFiles=$CUR/$1/..
DestPath=$2
ImagesPath=$CUR/$3
FileName=$CUR/$4

echo "SourcePath=$SourcePath DestPath=$DestPath ImagesPath=$ImagesPath FileName=$FileName"

choices=( 'copy' 'extract' 'compress' 'all' 'exit' )

# Present the choices.
# The user chooses by entering the *number* before the desired choice.
select choice in "${choices[@]}"
do
  # If an invalid number was chosen, $choice will be empty.
  # Report an error and prompt again.
  [[ -n $choice ]] || { echo "Invalid choice." >&2; continue; }

  # Examine the choice.
  # Note that it is the choice string itself, not its number
  # that is reported in $choice.
  case $choice in
    "copy")
      echo "copy config files ...$ScriptFiles"
      cd $ScriptFiles
      ./copyfiles2rootfs.sh $param1 $2 $3
      ;;
      
    extract)
      echo "extract rootfs ..."
      ;;
     ## ./extractrootfs.sh $1 $2 $3 $4
     ## ;;

    compress)
      echo "compress it rootfs ..."
      ;;
      #./compressrootfs.sh $1 $2 $3 $4
      #;;

    all)
        echo "extract rootfs ..."
      ./extractrootfs.sh $1 $2 $3 $4
      echo "copy config files ..."
      ./copyfiles2rootfs.dh $1 $2 $3 $4
      echo "compress it rootfs ..."
      ./compressrootfs.sh $1 $2 $3 $4
      # Set flag here, or call function, ...
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
./copyfiles2rootfs.dh $1 $2 $3 $4

echo "now compress(zip) rootfs in tftp folder."
while true; do
    read -p "Do you wish to compress the rootfs? " yn
    case $yn in
        [Yy]* ) ./compressrootfs.sh $1 $2 $3 $4; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";
    esac
done
