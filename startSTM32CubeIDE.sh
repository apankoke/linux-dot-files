#!/bin/sh
# start STM32CubeIDE from STM to build linux things
# 
cd /home/apankoke/projects/xilinx/2020.2/xilinx-zcu102-2020.2

export CROSS_COMPILE=/home/apankoke/xilinx/2020.2/Vitis/2020.2/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu-

# STM32 SDK Kit. Das Xilinx Kit erstmal herausgenommen ###
echo !!! sourcing STM32 SDK !!!!
source /home/apankoke/projects/stm32mp/workspace/STM32MP15-Ecosystem-v3.0.0/Developer-Package/SDK/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi

# STM32 krams
export PATH=/home/apankoke/STM32Cube/STM32CubeProgrammer/bin:$PATH
export PATH=/home/apankoke/gdbscripts:$PATH

cd /opt/st/stm32cubeide_1.7.0
# start it
./stm32cubeide 
