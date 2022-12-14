#!/bin/sh
# copy things to rootfs after build
# SourcePath,DestPath enthält nur den path
# Aufruf: mit Ausgabedatei,da unglaublich viel Ausgabe (-v)
# sudo postbuildscript/petalinuxpostbuild.sh postbuildscript/files /srv/tftp/nfsroot Linux/xlnx/images/linux > output.txt
# all filenames are fixed here
# tested trusted apankoke@10/2022

echo "param1=$1 param2=$2 param3=$3 param4=$4"

CUR=$PWD
HoemDir=$Home
SourcePath=$CUR/$1
DestPath=$2
ImagesPath=$CUR/$3
FileName=$CUR/$4

echo "SourcePath=$SourcePath DestPath=$DestPath ImagesPath=$ImagesPath FileName=$FileName"

FilePath=$SourcePath/$4
Firmware=$SourcePath/firmware
RootFiles=$SourcePath/root
UserPetalinux=$SourcePath/petalinux
UserTestOperator=$SourcePath/testoperator
CD=$SourcePath/ComprionDesktop
MatchBox=$SourcePath/ComprionDesktop.desktop
Icon=$SourcePath/ComprionDesktop.png
Libs1=$SourcePath/libQLinuxUtils.so
Libs2=$SourcePath/libQLinuxUtils.so.1
Libs3=$SourcePath/libQLinuxUtils.so.1.0
Libs4=$SourcePath/libQLinuxUtils.so.1.0.0
Xorgconf=$SourcePath/xorg.conf
Environment=$SourcePath/environment
Mountnfs=$SourcePath/mountnfs
Fstab=$SourcePath/fstab
NetworkInterfaces=$SourcePath/interfaces
RootfsPath=$ImagesPath/rootfs
ExtractRootfs=false
FileNameRootfs=$ImagesPath/rootfs.tar.gz

if [ -d "$1" ]; then
    echo "\$SourcePath is="$SourcePath
else
    echo "\$SourcePath is empty or does not exist!"
    echo "usage: petalinuxbostbuild.sh <SourcePath> <DestinationPath> <Imagepath>"
    exit 1
fi

if [ -d "$2" ]; then
        echo "\$DestPath is =" $DestPath
        # OK
    else
        echo "\$DestPath="$DestPath "doesnot exist!"
        echo "usage: petalinuxbostbuild.sh <SourcePath> <DestinationPath> <Imagepath>"
        exit 1
    fi

if [ -d "$3" ]; then
    echo  -e "\n\$ImagesPath="$3 "exist. Now continue..."
    ExtractRootfs=true;
else
    echo "\$ImagesPath="$3 "does not exist. Petalinux not build?"
    echo "usage: petalinuxbostbuild.sh <SourcePath> <DestinationPath> <Imagepath>"
    
fi

if [ "$ExtractRootfs" = true ] ; then
    echo "--------------------------------------------------------------------"
    echo "now delete (first), extract the rootfs to the directory" "(" $RootfsPath ")"
    echo "--------------------------------------------------------------------"
    # löschen des Ordners
    rm -rf $RootfsPath
    # entpacken....
    # anlegen des Ordners
    mkdir $RootfsPath
    # entpacken....
    echo "un-tar $FileNameRootfs to to $RootfsPath"
    tar -xf $FileNameRootfs -C $RootfsPath
    ls $RootfsPath
    echo "-----------------------------------------------------------------------------------"
    echo "--- first delete $DestPath and then copying/overwrite $RootfsPath to $DestPath ----"
    rm -rf $DestPath
    cp -arfv $RootfsPath $DestPath
    echo -e "\n------------------------ finished ------------------------------------------\n"
fi
echo "+++ copy things from $Firmware to" $DestPath/lib
cp -avrf $Firmware $DestPath/lib
echo "+++ copy things from $RootFiles to" $DestPath/home
yes | cp -avrf $RootFiles $DestPath/home

echo "+++ copy things from $UserPetalinux to" $DestPath/home
cp -avrf $UserPetalinux $DestPath/home

echo "+++ copy things from $UserTestOperator to" $DestPath/home
cp -avrf $UserTestOperator $DestPath/home

echo "+++ copy things from $CD to" $DestPath/usr/bin
cp -vf $CD $DestPath/usr/bin
echo "+++ copy things from $MatchBox to" $DestPath/usr/share/applications
cp -vf $MatchBox $DestPath/usr/share/applications
echo "+++ copy things from $MatchBox to"  $DestPath/usr/share/pixmaps
cp -vf $Icon $DestPath/usr/share/pixmaps
echo "+++ copy things from $Libs1 $Libs2 $Libs3 $Libs4 to"  $DestPath/usr/slib
cp -vf $Libs1 $DestPath/usr/lib
cp -vf $Libs2 $DestPath/usr/lib
cp -vf $Libs3 $DestPath/usr/lib
cp -vf $Libs4 $DestPath/usr/lib

echo "+++ copy things from $Xorgconf to"  $DestPath/etc/X11
cp -vf $Xorgconf $DestPath/etc/X11

echo "+++ copy things from $Environment to"  $DestPath/etc
cp -vf $Xorgconf $DestPath/etc

echo "+++ copy things from $Mountnfs to"  $DestPath/etc/init.d
# ein link in rc5.d mit S15mountnfs.sh startet das Ding noch vor dem mounten der fstab
cp -vf $Xorgconf $DestPath/etc/init.d

echo "+++ copy things from $Fstab to"  $DestPath/etc
cp -vf $Xorgconf $DestPath/etc


echo "+++ copy things from $NetworkInterfaces to"  $DestPath/etc/network
cp -vf $NetworkInterfaces $DestPath/etc/network



if [ -d "$4" ]; then
    echo "+++ copy things from $FilePath to"  $DestPath/FileName
    cp -r -vf  $FilePath $DestPath/$FileName
fi
echo "--------------------------- Scrpt ends -------------------------------------"