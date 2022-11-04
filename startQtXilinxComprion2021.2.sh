#!/bin/sh
# start qt to develop under xilinx SDK Tools Version 2021.2
# prior to this: petalinux-build --sdk
# petalinux-package --sysroot 
# this will take a long time. Drink some cofee!
cd /home/apankoke/projects/xilinx/2021.2/
#  /images/linux/sdk/environment-setup-aarch64-xilinx-linux
source sdk/environment-setup-cortexa72-cortexa53-xilinx-linux
~/Qt/Tools/QtCreator/bin/qtcreator