#!/bin/sh
#export https_proxy=http://localhost:1090
#export http_proxy=http://localhost:1090
touch ~/v2ray.log
apt-get update 
apt-get install git git-core unzip nginx screen -y
wget https://codeload.github.com/qiupq/ecsshell/zip/master
unzip master -d ~
cp -rf  ~/ecsshell-master/nginx/default-v1.4.6  /etc/nginx/sites-enabled/default
service nginx restart
mkdir -p /etc/v2ray/
cp -rf ~/ecsshell-master/nginx/v2ray.* /etc/v2ray/
~/ecsshell-master/v2ray/v2ray -config ~/ecsshell-master/v2ray/service_ws-tls-nginx.json  &

date 2>&1 |tee ~/v2ray.log 
