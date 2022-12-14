#!/bin/sh
# extract  rootfs after build
# SourcePath,DestPath enthält nur den path
# Aufruf: mit Ausgabedatei,da unglaublich viel Ausgabe (-v)
# erstmal in diese Ebene wechseln: 
# /mnt/project_zwo/2021.2/CLWaveCompleteTree/Linux/xlnx$
# sudo postbuildscript/compressrootfs.sh /srv/tftp/nfsroot images/linux > output.txt
# all filenames are fixed here
# tested trusted apankoke@10/2022

echo  "param1=$1" 
echo "param2=$2"
echo "param3=$3"

CUR=$PWD
HoemDir=$Home

DestPath=$1
SourcePath=$CUR/$1
ImagesPath=$2


echo -e "SourcePath=$SourcePath\nDestPath=$DestPath\nImagesPath=$ImagesPath\nFileName=$FileName"


FilePath=$SourcePath/$4
Firmware=$SourcePath/firmware
RootFiles=$SourcePath/root
UserPetalinux=$SourcePath/petalinux
UserTestOperator=$SourcePath/testoperator
CD_BuildPath=$SourcePath/../../../../Software/Cmpn-Linux/build-ComprionDesktop-CLWave-Debug/ComprionDesktop
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
Updatefilename=update-linux.tar
compressrootfs=false
FileNameRootfs=$RootfsPath/rootfs.tar.gz

if [ -d "$1" ]; then
        echo "\$DestPath is =" $DestPath
        # OK
    else
        echo "\$DestPath="$DestPath "doesnot exist!"
        echo "usage: compressrootfs.sh <SourcePath> <DestinationPath> <Imagepath>"
        exit 1
    fi

if [ -d "$2" ]; then
    echo  -e "\n\$ImagesPath="$2 "exist. Now continue..."
    compressrootfs=true;
else
    echo "\$ImagesPath="$3 "does not exist. Petalinux not build?"
    echo "usage: compressrootfs.sh <SourcePath> <DestinationPath> <Imagepath>"
    
fi

if [ "$compressrootfs" = true ] ; then
    echo "--------------------------------------------------------------------"
    echo "now compress the rootfs $RootfsPath to the directory" "(" $Imagepath ")"
    echo "--------------------------------------------------------------------"
    
    # packen....
    echo "tar $ImagesPath/$Updatefilename to $ImagesPath"
   # zip -r $RootfsPath/$Updatefilename $RootfsPath
    #tar -zcvf [result-filename.tar.gz] [path-of-directory-to-compress]
    tar -zcvf $ImagesPath/$Updatefilename $ImagesPath
      
    echo -e "\n------------------------ finished ------------------------------------------\n"
fi
