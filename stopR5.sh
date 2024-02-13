#!/bin/sh
echo " try to stop the startet R5 exe..."
echo stop > /sys/class/remoteproc/remoteproc0/state
