#!/bin/bash
sudo apt-get install aptitude
sudo aptitude install git
cd ~
git clone https://github.com/loicbourgois/init-debian.git
cd ~/init-debian
git pull origin master
chmod +x ./1.sh
./1.sh
chmod +x ./2.sh
./2.sh
