#!/bin/bash
# cd ./init-debian; chmod +x ./root.sh; ./root.sh
if [[ $EUID -ne 0 ]]; then
   echo 'This script must be run as root' 
   exit 1
fi
echo 'Edit sources.list'
gedit '/etc/apt/sources.list'
apt-get install aptitude
aptitude install git
aptitude install open-vm-tools
aptitude install open-vm-tools-desktop
aptitude install chromium

