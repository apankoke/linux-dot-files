#!/bin/sh
# param1: path to change to
# param2: source path relative to param1
# param3: destination path
# $1 = $(ProjDirPath) 					
# $2 = ${ProjName} 						
# $3 = ${ConfigName}
# $4 = $Destpath /srv/tftp/nfsroot/lib/firmware
# copy source(parameter1/parameter2) to destination(parameter3)
# ${ProjDirPath}=/mnt/projects_ssd/projects/xilinx/2019.1/edt_zcu102/edt_zcu102.sdk/TEP.sdk/TEC
# ${ConfigName}=Debug
# ${ProjName}=TEC
# FEHLER sudo: no tty present and no askpass program specified
# suders.d existiert, funktioniert aber hier, ECLIPSE nicht!!!
# NOTLÖSUNG: in eclipse als admin: echo wh12skb | sudo -S /home/apankoke/postbuild.sh ${ProjDirPath} ${ProjName} ${ConfigName} /srv/tftp/nfsroot/lib/firmware
# APankoke@2.2022 korrektur: so geht es. das script in sudoers.d eintragen und mit sudo vorab ausführen. Die befehle im Script NICHT mit sudo angeben!
# dann braucht man diese ganze chown Sache nicht machen!

ProjDirPath=$1
ProjectName=$2
Configuration=$3
ExeFileName=$ProjectName".elf"
Destpath=$4
echo "--------------------------------------------------"
echo "executing postbuildstep.sh now..."
echo "parameters are:"
echo "0 execution path:" $0
echo "1 ProjDirPath:" $ProjDirPath 
echo "2 ProjectName:" $ProjectName
echo "3 Configuration:" $Configuration
echo "4 ExeFileName:" $ExeFileName
echo "5 Destpath:" $Destpath

cd $ProjDirPath
echo copy "file"./$Configuration/$ExeFileName "to destination" $Destpath/$ExeFileName
cp ./$Configuration/$ExeFileName $Destpath/$ExeFileName
echo "------------------postbuild end-------------------"