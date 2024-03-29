#!/bin/bash -xe 
# copy things to rootfs after build
# SourcePath,DestPath enthält nur den path
# Aufruf: mit Ausgabedatei,da unglaublich viel Ausgabe (-v)
# erstmal in diese Ebene wechseln: 
# /mnt/project_zwo/2021.2/CLWaveCompleteTree/Linux/xlnx$
# sudo postbuildscript/copyfiles2rootfs.sh postbuildscript/files /srv/tftp/nfsroot images/linux > output.txt
# all filenames are fixed here
# tested trusted apankoke@10/2022

echo "param1=$1"
echo "param2=$2"
echo "param3=$3"
echo "param4=$4"

INSTALL_EXE="install -m 755 -g root -o root -p"

CUR=$PWD
HoemDir=$Home
SourcePath=$CUR/$1
DestPath=$2
ImagesPath=$CUR/$3
FileName=$CUR/$4

# cd plnx/Linux/xlnx/postbuildscript

echo "Current=$CUR SourcePath=$SourcePath DestPath=$DestPath ImagesPath=$ImagesPath FileName=$FileName"

#copy dnf paketmanager things
# /home/apankoke/projects/xilinx/2021.2/CLWaveCompleteTree/Linux/xlnx/postbuildscript/files/dnf/yum.repos.d/zynqmp-generic_eg.repo

DNF=$SourcePath/dnf/zynqmp-generic_eg.repo

# copy the modc mods etc files
#MODC=$SourcePath/modc/modc
MODC=/builds/deploy/CLWavePrograms/modc/modc
# /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Linux/xlnx/postbuildscript/files/modc/mods.elf
#MODS=$SourcePath/modc/mods.elf
MODS=/builds/deploy/CLWavePrograms/mods/mods.elf

SocketStarter=$SourcePath/clwavesocket
Socket=/builds/deploy/CLWavePrograms/socket/socket_debug.elf

SDBootFiles=$ImagesPath/../../sd-boot
LinuxImage=$ImagesPath/image.ub
LinuxDeviceTree=$ImagesPath/system.dtb
LinuxFPGA=$ImagesPath/system.bit
FilePath=$SourcePath/$4
Firmware=$SourcePath/firmware
RootFiles=$SourcePath/root
UserPetalinux=$SourcePath/petalinux
UIDPetalinux=$(grep petalinux $DestPath/etc/passwd | cut -d":" -f3)
GIDPetalinux=$(grep petalinux $DestPath/etc/passwd | cut -d":" -f4)
UserTestOperator=$SourcePath/testoperator
UIDTestOperator=$(grep testoperator $DestPath/etc/passwd | cut -d":" -f3)
GIDTestOperator=$(grep testoperator $DestPath/etc/passwd | cut -d":" -f4)
# CD_BuildPath=$SourcePath/../../../../Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/ComprionDesktop
CD_BuildPath=/builds/deploy/CLWavePrograms/ComprionDesktop/ComprionDesktop
# CD=$SourcePath/ComprionDesktop
MatchBox=$SourcePath/ComprionDesktop.desktop
Icon=$SourcePath/ComprionDesktop.png
#/home/apankoke/projects/xilinx/2021.2/CLWaveCompleteTree/Software/build-QLinuxUtils-CLWave-Debug/libQLinuxUtils.so.1.0.0
# Libs1=$SourcePath/../../../../Software/build-QLinuxUtils-CLWave-Debug/libQLinuxUtils.so
# Libs2=$SourcePath/../../../../Software/build-QLinuxUtils-CLWave-Debug/libQLinuxUtils.so.1
# Libs3=$SourcePath/../../../../Software/build-QLinuxUtils-CLWave-Debug/libQLinuxUtils.so.1.0
# Libs4=$SourcePath/../../../../Software/build-QLinuxUtils-CLWave-Debug/libQLinuxUtils.so.1.0.0
Libs1=/builds/deploy/CLWavePrograms/QLinuxUtils/libQLinuxUtils.so*
# modc
# Libs5=$SourcePath/modc/libmledplugin.so
# Libs6=$SourcePath/modc/libqscopeviewplugin.so
Libs5=/builds/deploy/CLWavePrograms/mwidgets/libmledplugin.so
Libs6=/builds/deploy/CLWavePrograms/QScopeView/libqscopeviewplugin.so
Libs7=/builds/deploy/CLWavePrograms/qvisafile/libqvisafile.so*
Libs8=/builds/deploy/CLWavePrograms/SCPIParser/libSCPIParser.so*
Libs9=/builds/deploy/CLWavePrograms/antlr4-runtime/libantlr4-runtime.so*

UBootTools=$SourcePath/fw_env.config
Xorgconf=$SourcePath/xorg.conf
XserverConf=$SourcePath/xserver-nodm-config
Environment=$SourcePath/environment
Mountnfs=$SourcePath/mountnfs.sh
Fstab=$SourcePath/fstab
NetworkInterfaces=$SourcePath/interfaces
RootfsPath=$ImagesPath/rootfs
ExtractRootfs=false
FileNameRootfs=$ImagesPath/rootfs.tar.gz
Exports=$SourcePath/exports
# /home/apankoke/projects/xilinx/2021.2/CLWave50/plnx/Linux/xlnx/postbuildscript/files/testDevicetree.sh
# scripts=$SourcePath/testDevicetree.sh
sudoconf=$SourcePath/sudoers
sudodir=$SourcePath/sudoers.d

ls
echo "####Check fo param1=$SourcePath"
if [ -d "$SourcePath" ]
then
    echo "\$SourcePath is="$SourcePath
    echo "\$CD_BuildPath is="$CD_BuildPath
else
    echo "\$SourcePath($SourcePath) is empty or does not exist!"
    echo "usage: copyfiles2rootfs.sh <SourcePath> <DestinationPath> <Imagepath>"
    exit 1
fi

if [ -d "$2" ]; then
        echo "\$DestPath is =" $DestPath
        # OK
    else
        echo "\$DestPath="$DestPath "doesnot exist!"
        echo "usage: copyfiles2rootfs.sh <SourcePath> <DestinationPath> <Imagepath>"
        exit 1
    fi

if [ -d "$3" ]; then
    echo  -e "\n\$ImagesPath="$3 "exist. Now continue..."
    ExtractRootfs=true;
else
    echo "\$ImagesPath="$3 "does not exist. Petalinux not build?"
    echo "usage: copyfiles2rootfs.sh <SourcePath> <DestinationPath> <Imagepath>"
    
fi


echo "+++ Copy Linux boot files $LinuxImage" to $DestPath/linux
mkdir -pv $DestPath/linux
chown -Rv apankoke:apankoke $DestPath/linux
cp -avf $LinuxImage $DestPath/linux
cp -avf $LinuxDeviceTree $DestPath/linux
cp -avf $LinuxFPGA $DestPath/linux
cp -arfv $SDBootFiles $DestPath/linux

echo "+++ copy things from $Firmware to" $DestPath/lib
cp -avrf $Firmware $DestPath/lib
echo "+++ copy things from $RootFiles to" $DestPath/home/root
yes | cp -avrf $RootFiles/* $DestPath/home/root
chown root:root $DestPath/home/root
# experimental: prevent root password login. Only way to become root is via sudo su or autologin.
#usermod -P $DestPath -L root

echo "+++ copy things from $UserPetalinux to" $DestPath/home/petalinux
yes | cp -avrf $UserPetalinux $DestPath/home/petalinux
chown -R $UIDPetalinux:$GIDPetalinux $DestPath/home/petalinux

echo "+++ copy things from $UserTestOperator to" $DestPath/home/testoperator
yes | cp -avrf $UserTestOperator $DestPath/home/testoperator
chown -R $UIDTestOperator:$GIDTestOperator $DestPath/home/testoperator
#usermod -P $DestPath -G tty,input,video,shutdown,sudo,testoperator testoperator

echo "+++ copy things from $MODC and $MODS to" $DestPath/usr/bin
$INSTALL_EXE $MODC $DestPath/usr/bin
$INSTALL_EXE $MODS $DestPath/usr/bin


#echo "+++ copy things from $SocketStarter and $Socket to " $DestPath/etc/init.d and $DestPath/usr/bin
#$INSTALL_EXE $SocketStarter $DestPath/etc/init.d
#ln -sf /etc/init.d/clwavesocket $DestPath/etc/rc5.d/S16clwavesocket
#if [ -e $Socket ]; then
#    $INSTALL_EXE $Socket $DestPath/usr/bin/socket.elf
#fi


echo "+++ copy things from $CD_BuildPath to" $DestPath/usr/bin
#$INSTALL_EXE $CD_BuildPath $DestPath/usr/bin
echo "+++ copy things from $MatchBox to" $DestPath/usr/share/applications
cp -vf $MatchBox $DestPath/usr/share/applications
echo "+++ copy things from $MatchBox to"  $DestPath/usr/share/pixmaps
cp -vf $Icon $DestPath/usr/share/pixmaps
echo "+++ copy things from $Libs1 to"  $DestPath/usr/lib
$INSTALL_EXE $Libs1 $DestPath/usr/lib
# modc libs
$INSTALL_EXE $Libs5 $DestPath/usr/lib
$INSTALL_EXE $Libs6 $DestPath/usr/lib
$INSTALL_EXE $Libs7 $DestPath/usr/lib
$INSTALL_EXE $Libs8 $DestPath/usr/lib
$INSTALL_EXE $Libs9 $DestPath/usr/lib



echo "+++ copy things from $Mountnfs to"  $DestPath/etc/init.d
# ein link in rc5.d mit S15mountnfs.sh startet das Ding noch vor dem mounten der fstab
 
echo "+++ copy things from $scripts to"  $DestPath/home/root
#$INSTALL_EXE $scripts $DestPath/home/root


echo "+++ copy things from $Fstab to"  $DestPath/etc
cp -vf $Fstab $DestPath/etc

echo "+++ copy things from $sudoconf to"  $DestPath/etc
#install -m 440 -o root -g root -p $sudoconf $DestPath/etc
#cp -avrf $sudodir $DestPath/etc/
#chown -R root:root $DestPath/etc/sudoers.d
#chmod 755 $DestPath/etc/sudoers.d
#chmod 440 $DestPath/etc/sudoers.d/*

echo "+++ copy things from $NetworkInterfaces to"  $DestPath/etc/network
cp -vf $NetworkInterfaces $DestPath/etc/network

echo "+++ copy things from $Exports to"  $DestPath/etc
cp -vf $Exports $DestPath/etc

if [ -d "$4" ]; then
    echo "+++ copy things from $FilePath to"  $DestPath/FileName
    cp -r -vf  $FilePath $DestPath/$FileName
fi

echo "Running the script to apply the config files"
./apply_files_overlay.sh $SourcePath/overlay $DestPath

cd ..
echo "here we are:"
ls -l
rm -f system.html

URL="curl  https://frightanic.com/goodies_content/docker-names.php"
# create a system-info html file in the end
{
echo "<html>"
echo "<head>"
echo "</head>"
echo "<body>"
echo "<h1>"
echo "System name: "
echo "<br>"
curl  https://frightanic.com/goodies_content/docker-names.php
echo "</h1>"
echo "<h2>"
echo "Build Date:"
echo "</h2>"
echo "<h2>"
echo "System Version:"
echo "</h2>"
echo "<h2>"
echo "Rootfs Features:"
echo "</h2>"
echo "<ul>"
echo "</ul>"
echo "<h2>"
echo "Kernel Features:"
echo "</h2>"
echo "<ul>"
echo "</ul>"
echo "</body>"
}>> system.html

chown apankoke:apankoke system.html
# wir sind hier root. Das funzt nicht mit dem FeatureList....


# wir im der Ebene CLWaveCompleteTree/Linux/xlnx geschrieben
# Getz das FeatureList prog aufrufen mit Parametern:
# Das wird die system.html mit den Features und Versionen etc. aus dem aktuellen
# Linux befruchten.
#ToDo die config Dateien aus dem inneren der Linux build und Konfiguration hierhin kopieren!
# im buildserver /mnt/builds_ssd/builds/workspace/CLWave50/plnx/Linux/xlnx/FeatureList
# apankoke@7.6.2023 ToDo das funktioniert hier noch nicht!
cd xlnx
echo -e "Hello there, here is the sector scrutinizer! The Workspace is here: $WORKSPACE pwd=$PWD"
echo "here we are:"
cat FeatureList.sh 
./FeatureList.sh rootfs_config .config Makefile_Kernel config

cp -afv system.html $DestPath/linux
echo "--------------------------- Scrpt ends -------------------------------------"
