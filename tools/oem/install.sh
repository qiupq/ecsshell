#!/bin/bash
#set -x
echo "install openvpn app ..."
FILE=$0
ALL=`readlink -f  ${FILE}`
CWD=`dirname ${ALL}`
echo "CWD=$CWD"

INSTALLDIR=/usr/bin

CONFIGDIR=/etc/oem/
mkdir -p $CONFIGDIR
cp $CWD/bootup.sh $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/oem.service $SYSTEMDDIR

systemctl daemon-reload

#service run
systemctl enable oem.service
systemctl restart oem.service

echo "to the end."
exit 0
