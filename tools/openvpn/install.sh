#!/bin/bash
#set -x
echo "install openvpn app ..."
FILE=$0
ALL=`readlink -f  ${FILE}`
CWD=`dirname ${ALL}`
echo "CWD=$CWD"

INSTALLDIR=/usr/bin

#mkdir -p $INSTALLDIR
#cp -apf $CWD/*.ovpn $INSTALLDIR

CONFIGDIR=/etc/openvpn
mkdir -p $CONFIGDIR
cp $CWD/*.ovpn $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/systemd/system/openvpn.service $SYSTEMDDIR
#cp $CWD/systemd/system/openvpn.service $SYSTEMDDIR
systemctl daemon-reload

#client run
#systemctl enable openvpn_client.service
#systemctl restart openvpn_client.service

#service run
systemctl enable openvpn.service
systemctl restart openvpn.service

echo "to the end."
exit 0
