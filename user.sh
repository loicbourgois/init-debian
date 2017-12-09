#!/bin/bash
# cd ./init-debian; chmod +x ./user.sh; ./user.sh

git config --global user.name "Loïc Bourgois"
git config --global user.email "loicbourgois.web@gmail.com"
cd ~
git clone https://gitlab.com/loicbourgois/init-debian.git
cd init-debian
git pull origin master
chromium
