#!/bin/bash
PASSWD="$(zenity --password --title=Authentication)\n"
sudo -e PASSWD | sudo -S putty

