#!/bin/sh
# test fundamentals of openamp. remoteproc and rpmsg feature of the kernel with r5 processor
cd /sys/class/remoteproc/remoteproc0
echo image_echo_test > /sys/class/remoteproc/remoteproc0/firmware
echo start > state
