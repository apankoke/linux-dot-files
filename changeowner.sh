#!/bin/bash
# Script zum ändern des Besitzers von Ordnersn auf dem Ziel Linux System
# Apankoke@Comprion 02.9.2022
# Die Ordner müssen den Besitzer von root auf <user> (apankoke) geändert werden: /srv/tftp/nfsroot/home/root und /srv/tftp/nfsroot/usr/bin
# für Eclipse noch zus. das /lib/firmware Verzeichnis. sudo chown  -R apankoke /srv/tftp/nfsroot/lib/firmware/
# dieses script muss in sudoers.d eingetragen sein
# ausführen des scripts dann mit sudo ./changeowner

rootDir=$PWD
nfsroot=/srv/tftp/nfsroot
chown -R apankoke $nfsroot/lib/firmware/
chown -R apankoke $nfsroot/home/root
chown -R apankoke $nfsroot/usr/bin

