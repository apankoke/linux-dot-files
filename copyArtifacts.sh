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
DestPath3=$5

echo -e "Copy artifacts from\n$0 \n(actual dir=$PWD) has been called! \nparameter1 SourcePath=$SourcePath \nparam2 DestPath=$DestPath 
        \nparam3 DestPath2=$DestPath2 \nparam4 FileName=$FileName \nparam5 DestPath3=$DestPath3! 
        \n Here we go \n\n\n"

for n in $(seq 1 $#); do
    if [ $n -le 4 ]
    then
        echo -e "## Nr:$n copy File $SourcePath/$1 $DestPath/$1 with rsync now"

        rsync "$SourcePath/$FileName" "$DestPath/$FileName"
        rsync "$SourcePath/$FileName" "$DestPath2/$FileName"
        rsync "$SourcePath/$FileName" "$DestPath3/$FileName"
    else
        echo -e "Feddich"
    fi
  shift
done



