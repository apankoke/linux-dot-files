#!/bin/sh
# SourcePath,DestPath enthält nur den path
# copy file für das .pro Fie im QT Creator
# z.B.: QMAKE_POST_LINK +=  sudo $${HOME}/copyArtifacts.sh  $${OUT_PWD} /srv/tftp/nfsroot/home/root
# kopiert das Artifact (FILENAME) aus dem QT Creator Output Ordner in den DestPath und DestPath2
# man kann im .pro File auch Schleifen abfahren, ist aber irgendwie kompliziert.
# Kuckst du: https://stackoverflow.com/questions/32631084/create-dir-copy-files-with-qmake

SourcePath=$1
DestPath=$2
DestPath2=$3
FileName=$4
FilePath=$SourcePath/$FileName

echo --------------------------------------------------------------------
echo copy artifacts from $FilePath to $DestPath and $DestPath2
cp $FilePath $DestPath/$FileName
cp $FilePath $DestPath2/$FileName
# Kacke! cp $FilePath $DestPath/../../usr/bin
echo --------------------------------------------------------------------

