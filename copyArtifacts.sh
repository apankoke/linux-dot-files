#!/bin/bash
# apankoke@6.2023 wenn ditte (!/bin/bash) hier nicht steht kommt es zu merkwürdigen Fehlermeldungen, seit Linux Mint 20. Vorher stand dort !/bin/sh
# z.b. 22:if [[ not found.....
# SourcePath,DestPath enthält nur den path
# copy file für das .pro Fie im QT Creator
# z.B.: QMAKE_POST_LINK +=  sudo $${HOME}/copyArtifacts.sh  $${OUT_PWD} /srv/tftp/nfsroot/home/root
# kopiert das Artifact (FILENAME) aus dem QT Creator Output Ordner in den DestPath und DestPath2
# man kann im .pro File auch Schleifen abfahren, ist aber irgendwie kompliziert.
# Kuckst du: https://stackoverflow.com/questions/32631084/create-dir-copy-files-with-qmake
 # installiert eine variable liste von Dateien. Siehe copyartifacts. wird ausserdem als root ausgeführt. ist im sudoers.d eingetragen
# als targetdir wird param 3 benutzt
# parameter 2 ist ein optionaler target.
#QMAKE_POST_LINK +=  sudo $${HOME}/copyArtifacts.sh $${OUT_PWD} /srv/tftp/nfsroot/usr/lib /srv/tftp/nfsroot/usr/lib libQLinuxUtils.so libQLinuxUtils.so.1 libQLinuxUtils.so.1.0 libQLinuxUtils.so.1.0.0

SourcePath=$1
DestPath=$2
DestPath2=$3
FileName=$4


for n in $(seq 1 $#); do
    if [[ "$n" -ge 4 ]]
    then
        echo -e "copy File $SourcePath/$1 $DestPath/$1\nFile is:\n File$n $1"
        cp -a $SourcePath/$1 $DestPath/$1
    else
        echo $1
    fi
  shift
done

FilePath=$SourcePath/$FileName

echo --------------------------------------------------------------------
echo "param1=$SourcePath param2=$DestPath param3=$DestPath2 param4=$FileName"
echo copy artifacts from $FilePath to $DestPath and $DestPath2
cp -a $FilePath $DestPath/$FileName
cp -a $FilePath $DestPath2/$FileName
# Kacke! cp $FilePath $DestPath/../../usr/bin
echo --------------------------------------------------------------------

