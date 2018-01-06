#!/bin/bash
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
