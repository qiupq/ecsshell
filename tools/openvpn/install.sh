#!/bin/bash
#set -x
echo "install openvpn app ..."
FILE=$0
ALL=`readlink -f  ${FILE}`
CWD=`dirname ${ALL}`
echo "CWD=$CWD"

apt install openvpn  -y 

INSTALLDIR=/usr/sbin
GETSSLVER=$(openssl version |awk '{print $2}')
if [ "x$GETSSLVER" == "x1.1.1" ] ; then
    echo "ver:1.1.1"

    if [ ! -f /usr/sbin/openvpnv0 ] ; then
    mv /usr/sbin/openvpn /usr/sbin/openvpnv0
    cp -af $CWD/openvpn  $INSTALLDIR
    #mkdir -p $INSTALLDIR
    #cp -apf $CWD/*.ovpn $INSTALLDIR
    fi
fi

CONFIGDIR=/etc/openvpn
mkdir -p $CONFIGDIR
cp $CWD/*.ovpn $CONFIGDIR

SYSTEMDDIR=/etc/systemd/system/
cp $CWD/openvpns.service $SYSTEMDDIR
#cp $CWD/systemd/system/openvpns.service $SYSTEMDDIR
systemctl daemon-reload

#client run
#systemctl enable openvpn_client.service
#systemctl restart openvpn_client.service

#iptables -t nat -F
#echo 1 > /proc/sys/net/ipv4/ip_forward
#iptables -t nat -A POSTROUTING -j MASQUERADE

#service run
systemctl enable openvpns.service
systemctl restart openvpns.service

echo "to the end."
exit 0
