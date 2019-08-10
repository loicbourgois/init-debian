#!/bin/bash
# chmod +x ./main.sh; ./main.sh;
if [[ $EUID -ne 0 ]]; then
   echo 'This script must be run as root' 
   exit 1
fi
echo 'Edit sources.list'
echo 'Useful if apt is configured to use a cdrom'
read -p 'Press enter to continue'
gedit '/etc/apt/sources.list'
apt-get install sudo
#https://unix.stackexchange.com/questions/179954/username-is-not-in-the-sudoers-file-this-incident-will-be-reported/258865#258865
echo 'Add the following line to /etc/sudoers'
echo 'user        ALL=(ALL)      ALL'
read -p 'Press enter to continue'
/usr/sbin/visudo
/usr/sbin/adduser user sudo
echo 'You can now run ./0.sh'
echo 'Don\'t forget to run chmod +x 0.sh'
su user
