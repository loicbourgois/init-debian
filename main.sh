#!/bin/bash
# cd ./init-debian; chmod +x ./main.sh; ./main.sh
if [[ $EUID -ne 0 ]]; then
   echo 'This script must be run as root' 
   exit 1
fi
#https://unix.stackexchange.com/questions/179954/username-is-not-in-the-sudoers-file-this-incident-will-be-reported/258865#258865
echo 'user        ALL=(ALL)      ALL'
visudo
su user
echo 'Edit sources.list'
sudo gedit '/etc/apt/sources.list'
sudo apt-get install aptitude
sudo aptitude install git
cd ~
git clone https://gitlab.com/loicbourgois/init-debian.git
git pull origin master
cd ~/init-debian
chmod +x ./1.sh
./1.sh
chmod +x ./2.sh
./2.sh
