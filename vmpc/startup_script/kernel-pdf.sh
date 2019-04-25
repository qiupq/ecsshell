#!/bin/bash

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo "xxx" > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

apt-get update 
mkdir -p /etc/v2ray/
#add apt-add-repository function                                                                           
apt-get install software-properties-common --yes                                                           
#add edit app                                                                                              
apt-get install vim --yes                                                                                  
#add ssh tools                                                                                             
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

#add apt-add-repository function
apt-get install software-properties-common --yes
#add edit app
apt-get install vim --yes
#add ssh tools
apt-get install mosh --yes 

apt-get install nmap --yes
apt-get install traceroute --yes
apt-get install git --yes
apt-get install git-core --yes
apt-get install screen --yes
apt-get install samba samba-common smbclient --yes
apt-get install jq --yes
apt-get install curl --yes
apt-get install perl python git --yes
apt-get install vsftpd --yes
apt-get install nmap --yes
apt-get install traceroute --yes
apt-get install git --yes
apt-get install git-core --yes
apt-get install screen --yes
apt-get install samba samba-common smbclient --yes
apt-get install jq --yes
apt-get install curl --yes
apt-get install perl python git --yes
apt-get install vsftpd --yes
apt-get install polipo --yes
apt-get install socat --yes
apt-get install nginx --yes

#kernel 
apt-get install  gcc --yes
apt-get install build-essential perl python git --yes
apt-get install libc6-dev --yes
apt-get install xmlto --yes
apt-get install python-sphinx  texlive-xetex python-pip docbook-utils --yes
wget https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/snapshot/linux-4.1.16.tar.gz 
tar -xzf linux-4.1.16.tar.gz  -C /root/kernel
