#!/bin/sh
# build all
# 

read -p "Petalinux wird mit Meister Proper geputzt. Das neu bauen nach dem clean (mrproper) dauert ca. 4h!!!. Type fuck to continue:" kommando;
if [ $kommando == 'fuck' ]
then 
    petalinux-build -x mrproper -f
    petalinux-build
    petalinux-build --sdk
    # mal schauen ob  das mrproper den Ordner löscht.... petalinux-package --sysroot -d /home/apankoke/projects/xilinx/2020.2/sdk
    # eventuell kann man dann das --sdk weglassen, denn das dauert am längsten.
    petalinux-package --sysroot
else 
    echo "escape...see you" 
fi

