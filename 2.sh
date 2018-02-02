#!/bin/bash
git config --global user.name "loicbourgois"
git config --global user.email "loic@bourgois.pro"
git config --global --list
ssh-keygen -t rsa -b 4096 -C "loic@bourgois.pro"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
