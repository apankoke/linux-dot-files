#!/bin/sh
# start eclipse neon to develop under xilinx SDK Tools Version 2020.2
# 
cd /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2
#  /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2
#       /images/linux/sdk/environment-setup-aarch64-xilinx-linux
export CROSS_COMPILE=/home/apankoke/xilinx/2020.2/Vitis/2020.2/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-
source ../sdk/environment-setup-aarch64-xilinx-linux
sudo umount /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2/components/ext_sources/kernel-src-eclipse
sudo mount -t aufs -o dirs=/home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2/components/ext_sources/linux-xlnx=rw:/home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2/build/tmp/work-shared/zynqmp-generic/kernel-build-artifacts=ro none /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2/components/ext_sources/kernel-src-eclipse
cd /home/apankoke/Eclipse/neon
# start it
./eclipse
#/home/apankoke/Eclipse/neon