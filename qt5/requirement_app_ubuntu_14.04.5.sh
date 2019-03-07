#!/bin/bash
#it is ubuntu 14.04.5 build QT5.6.2 requirement libs and Apps
#all libs maybe take space :1.2GB
apt-get build-dep qtbase-opensource-src --yes 

apt-get install build-essential perl python git --yes
apt-get install libasound2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev --yes 
#accessibility
apt-get install 'libdbus-1-*' 'libatspi2.0-*' --yes
#Documentation
#  Clang (>=6.x)
#mkdir -p /opt/clang
#wget http://releases.llvm.org/6.0.1/clang+llvm-6.0.1-x86_64-linux-gnu-ubuntu-14.04.tar.xz -O /opt/clang.tar.xz
#tar -xJf /opt/clang.tar.xz -C /opt/clang
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

# (Ubuntu 11.10 -- 12.10 only)
#apt-add-repository ppa:u-szeged/sedkit --yes
#apt-get update
#apt-get install sedkit-env-qtwebkit --yes

if [ $? -ne 0 ];
then
echo "app install error!!!"
exit 0
fi



echo "all app is install"
