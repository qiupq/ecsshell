#!/bin/bash
echo "ubuntu 16.04 install start->>> "
add-apt-repository ppa:openjdk-r/ppa  <<EOF

EOF

apt-get update 
apt-get install openjdk-8-jdk --yes

echo "" >> /etc/profile
echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME  
export PATH" >> /etc/profile
apt-get install git gnupg flex bison gperf build-essential zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386  libgl1-mesa-dev g++-multilib tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 dpkg-dev ccache  --yes
apt-get install curl ccache --yes
apt-get install android-tools-adb bc bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev --yes
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so

curl https://storage.googleapis.com/git-repo-downloads/repo >/usr/bin/repo
chmod a+x /usr/bin/repo
chown qq:qq /usr/bin/repo

echo "all qq app done "
