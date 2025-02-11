#! /bin/bash

wget https://archive.kali.org/archive-key.asc -O /etc/apt/trusted.gpg.d/kali-archive-key.asc | apt-key add
sudo rm /etc/apt/sources.list.d/*
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" |sudo tee /etc/apt/sources.list
sudo apt update
