#!/bin/bash

printf "Place Windows to monitors using MonitorPositions1\n"
while read row; do
  IFS=" " read id g x y w h _ <<< ${row}
  wmctrl -ir ${id} -e 0,${x},${y},${w},${h}
done < MonitorPositions1


