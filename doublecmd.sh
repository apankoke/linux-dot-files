#!/bin/sh

# Use this script for execute portable version of Double Commander

cd "`dirname "$0"`"
cd /home/apankoke/Downloads/DoubleCommander/doublecmd
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
./doublecmd
