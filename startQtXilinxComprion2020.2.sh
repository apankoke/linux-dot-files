#!/bin/sh
# start qt to develop under xilinx SDK Tools Version 2020.2
# prior to this: petalinux-build --sdk
# petalinux-package --sysroot 
# this will take a long time. Drink some cofee!
cd /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2
#  /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2
#       /images/linux/sdk/environment-setup-aarch64-xilinx-linux
#source ./images/linux/sdk/environment-setup-aarch64-xilinx-linux
# hier wurde das SDK mittels petalinux-package --sysroot -d /home/apankoke/projects/xilinx/2020.2/sdk
# installiert.
source /home/apankoke/projects/xilinx/2020.2/sdk/environment-setup-aarch64-xilinx-linux
/home/apankoke/projects/xilinx/2020.2/sdk/sysroots/x86_64-petalinux-linux/usr/bin/aarch64-xilinx-linux/aarch64-xilinx-linux-g++
~/Qt/Tools/QtCreator/bin/qtcreator