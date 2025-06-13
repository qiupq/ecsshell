#!/bin/bash
#set -x
echo "install v2ray app ..."
CWD=/root/ecsshell-master/v2ray
INSTALLDIR=/usr/v2ray
rm -rf /usr/bin/v2ray
rm -rf $INSTALLDIR/
mkdir -p $INSTALLDIR
cp -apf $CWD/5.32.0/* $INSTALLDIR
ln -sf  $INSTALLDIR/v2ray /usr/bin/v2ray
timedatectl set-timezone  Asia/Shanghai
#ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CONFIGDIR=/etc/v2ray
mkdir -p $CONFIGDIR
cp $CWD/service.json $CONFIGDIR
cp $CWD/client.json  $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/5.32.0/systemd/system/v2ray.service $SYSTEMDDIR
cp $CWD/5.32.0/systemd/system/v2ray_server.service $SYSTEMDDIR
systemctl daemon-reload

#need files when running
mkdir -p /var/log/v2ray/
touch -m /var/log/v2ray/access.log
touch -m /var/log/v2ray/error.log 
systemctl enable v2ray_server.service
systemctl restart v2ray_server.service

echo "to the end."
exit 0
