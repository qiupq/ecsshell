#!/bin/bash
#set -x
echo "install v2ray app ..."
CWD=/root/ecsshell-master/v2ray
INSTALLDIR=/usr/bin/v2ray
mkdir -p $INSTALLDIR
cp -apf $CWD/4.31.0/* $INSTALLDIR
timedatectl set-timezone  Asia/Shanghai
#ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CONFIGDIR=/etc/v2ray
mkdir -p $CONFIGDIR
cp $CWD/service.json $CONFIGDIR
cp $CWD/client.json  $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/4.31.0/systemd/system/v2ray.service $SYSTEMDDIR
cp $CWD/4.31.0/systemd/system/v2ray_server.service $SYSTEMDDIR
systemctl daemon-reload
#systemctl enable v2ray.service
systemctl enable v2ray_server.service

#need files when running
mkdir -p /var/log/v2ray/
touch -m /var/log/v2ray/access.log
touch -m /var/log/v2ray/error.log 
systemctl restart v2ray_server.service

echo "to the end."
exit 0
