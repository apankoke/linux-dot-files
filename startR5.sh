#!/bin/sh
echo 8 > /proc/sys/kernel/printk
echo " try to start the loaded R5 exe..."
echo clwave-base-app-2.elf > /sys/class/remoteproc/remoteproc0/firmware
echo start > /sys/class/remoteproc/remoteproc0/state