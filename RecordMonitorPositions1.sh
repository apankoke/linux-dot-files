#!/bin/bash

printf "Record window positions of monitors to MonitorPositions1\n"
 wmctrl -lG > MonitorPositions1
