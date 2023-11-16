#!/bin/bash
#set -x
echo "install frp app ..."
FILE=$0
ALL=`readlink -f  ${FILE}`
CWD=`dirname ${ALL}`
echo "CWD=$CWD"

INSTALLDIR=/usr/bin/

mkdir -p $INSTALLDIR
cp -apf $CWD/frp* $INSTALLDIR

CONFIGDIR=/etc/frq
mkdir -p $CONFIGDIR
cp $CWD/service.ini $CONFIGDIR
cp $CWD/client.ini  $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/systemd/system/frp_server.service $SYSTEMDDIR
cp $CWD/systemd/system/frp_client.service $SYSTEMDDIR
systemctl daemon-reload

#client run
#systemctl enable frp_client.service
#systemctl restart frp_client.service

#service run
systemctl enable frp_server.service
systemctl restart frp_server.service

echo "to the end."
exit 0
