#!/bin/bash

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo "xxx" > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

apt-get update 
ssh-keygen  -t rsa -P '' -f /root/.ssh/id_rsa

#it is ubuntu 14.04.5 build QT5.6.2 requirement libs and Apps
#all libs maybe take space :1.2GB
apt-get build-dep qtbase-opensource-src --yes 

apt-get install build-essential perl python git --yes
apt-get install libasound2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev --yes 
#accessibility
apt-get install 'libdbus-1-*' 'libatspi2.0-*' --yes
#Documentation
#  Clang (>=6.x)
mkdir -p /opt
wget http://releases.llvm.org/6.0.1/clang+llvm-6.0.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz -O /opt/clang.tar.xz
tar -xJf /opt/clang.tar.xz -C /opt/
#mv clang+llvm-6.0.1-x86_64-linux-gnu-ubuntu-14.04 clang
#echo "PATH=/opt/clang/bin:\$PATH" >> ~/.bashrc

#ubuntu 18.04 is 
#apt install libclang-6.0-dev llvm-6.0
#qt webkit
apt-get install flex bison gperf libicu-dev libxslt-dev ruby --yes
#Libxcb
apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev --yes
#Qt WebEngine
apt-get install libssl-dev libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libdbus-1-dev libfontconfig1-dev libcap-dev libxtst-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libxss-dev libegl1-mesa-dev gperf bison --yes
apt-get install libbz2-dev libgcrypt11-dev libdrm-dev libcups2-dev libatkmm-1.6-dev --yes
echo "now is git progress"
cd /root
 git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.12
perl init-repository
