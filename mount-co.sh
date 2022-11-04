#!/bin/bash
# Script zum mounten der Coomprion Rechner nach dem Systemstart
# und dem Anmelden über VPN
# Apankoke@Comprion 29.9.2022
# Script muss mit root rechten laufen! 
# Im sudoers.d eingetragen
mount /mnt/apankoke/buildserver-hdd/
mount /mnt/apankoke/apankoke-linux64-co
mount /mnt/apankoke/apankoke-linux64-co-projects
mount /mnt/apankoke/buildserver
