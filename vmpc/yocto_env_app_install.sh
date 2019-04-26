#!/bin/bash
echo "install start->>> "
apt-get update 
apt-get install wget unzip vim --yes
apt-get install mosh --yes                                                                                 
apt-get install nmap --yes
apt-get install traceroute --yes
apt-get install vsftpd --yes                                                                               
apt-get install nmap --yes                                                                                 
apt-get install traceroute --yes
apt-get install git --yes                                                                                  
apt-get install git-core --yes
apt-get install screen --yes   
apt-get install samba samba-common smbclient --yes
apt-get install jq --yes
apt-get install curl --yes
apt-get install perl python --yes
apt-get install vsftpd --yes
apt-get install polipo --yes
apt-get install socat --yes
apt-get install nginx --yes
apt-get install unzip ssh openssh-server vim mosh --yes

apt-get install  gcc --yes
apt-get install build-essential perl python git --yes
apt-get install libc6-dev --yes
apt-get install xmlto --yes
apt-get install python-sphinx  texlive-xetex python-pip docbook-utils --yes
apt-get install u-boot-tools --yes
apt-get install libsdl1.2-dev xterm sed cvs subversion coreutils texi2html \
docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils \
libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc --yes
# RF:https://wiki.phytec.com/pages/viewpage.action?pageId=78807233
apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
build-essential chrpath socat libsdl1.2-dev xterm g++-multilib \
cpio python python3 python3-pip python3-pexpect \
xz-utils debianutils iputils-ping  --yes
echo "all qq app done "
