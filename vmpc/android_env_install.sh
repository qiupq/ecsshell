#!/bin/bash
echo "install start->>> "
add-apt-repository ppa:openjdk-r/ppa
apt-get update 
apt-get install openjdk-8-jdk --yes

echo "" >> /etc/profile
echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME  
export PATH" >> /etc/profile
apt-get install git gnupg flex bison gperf build-essential zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386  libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 dpkg-dev ccache  --yes
apt-get install curl ccache --yes
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so

curl http://android.git.kernel.org/repo >/usr/bin/repo
chmod a+x /usr/bin/repo

echo "all qq app done "
