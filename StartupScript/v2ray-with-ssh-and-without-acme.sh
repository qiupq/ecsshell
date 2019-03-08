#!/bin/bash

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4Nw/f6LZrtNYD3VqTFzZw5uVYdIG7ekCczPyGstJoqgKWe+Mkjg7DgO9DmewlZxcbtZLlZwDrWoTv5+DGrbqlxDQf1pgRxmpWc8HKUJRHXAwohZCjRgvfDQ1CQoF7yhOL7zQ8fbo8+Lt7nE/3+r2XYrtUrm6bt1cVXyqAXiVFSdDahitTES9p/uK5GwP+cM59hP7HIHV9qlffb7HsdefVR7Ha5p1NZpLNcmxPgNdLLgWHNz8okd1AUoImVFz5DqHUMS7pWTfkHfaNrJR2+rM7Ntj/Bc0kOy6oydhyO5HgEDNrqE605RcnQROfx994hQaM+uVSGjx4qqWXEm+AzGVH qiuworker@163.com" > /root/.ssh/authorized_keys
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

curl  https://get.acme.sh | sh
mv /.acme.sh/ ~/

wget https://codeload.github.com/qiupq/ecsshell/zip/master -O v2ray.zip
unzip v2ray.zip -d ~
cp ~/ecsshell-master/nginx/default-v1.4.6  /etc/nginx/sites-enabled/default
cp -rf ~/ecsshell-master/nginx/v2ray* /etc/v2ray/

#~/.acme.sh/acme.sh --issue --standalone -k ec-256 -d $(hostname).free1234.tk
#~/.acme.sh/acme.sh --installcert -d $(hostname).free1234.tk --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
~/ecsshell-master/v2ray/v2ray -config ~/ecsshell-master/v2ray/service_ws-tls-nginx.json
service nginx restart
