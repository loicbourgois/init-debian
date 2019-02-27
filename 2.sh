#!/bin/bash
git config --global user.name "loicbourgois"
git config --global user.email "loic@bourgois.pro"
git config --global --list
echo '' 
echo 'Setting ssh for github' 
echo 'Use /home/user/.ssh/github as filename'
read -p 'Press enter to continue'
ssh-keygen -t rsa -b 4096 -C "loic@bourgois.pro"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github
