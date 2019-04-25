#!/bin/bash
#add user
useradd -m qq
su qq
cd ~

#download
mkdir -p /home/qq/
wget ftp://ftp.phytec.de/pub/Software/Linux/Yocto/Tools/phyLinux -O phyLinux
chmod +x phyLinux
./phyLinux init
pwd
