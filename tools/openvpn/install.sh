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
cp $CWD/openvpns.service $SYSTEMDDIR
#cp $CWD/systemd/system/openvpns.service $SYSTEMDDIR
systemctl daemon-reload

#client run
#systemctl enable openvpn_client.service
#systemctl restart openvpn_client.service

CLIENT_INTF="tun0"
SERVER_INTF="enp1s0"

iptables-legacy -t nat -F
echo "1"
iptables-legacy -A FORWARD -i $SERVER_INTF -o $CLIENT_INTF -m state --state ESTABLISHED,RELATED -j ACCEPT
echo "2"
iptables-legacy -A FORWARD -i $CLIENT_INTF -o $SERVER_INTF -j ACCEPT
echo "3"
iptables-legacy -t nat -A POSTROUTING -o $SERVER_INTF -j MASQUERADE

echo "1" > /proc/sys/net/ipv4/ip_forward
#iptables -t nat -A POSTROUTING -s 10.10.10.0/24 -j MASQUERADE
#iptables-legacy -t nat -A POSTROUTING -j MASQUERADE
#service run
systemctl enable openvpns.service
systemctl restart openvpns.service

echo "to the end."
exit 0
