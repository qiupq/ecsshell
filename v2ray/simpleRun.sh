#!/bin/bash
echo "Asia/Shanghai" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata
 ps -xua |grep v2ray |grep config |tr -s [:space:]|cut -f 2 -d " "|xargs -i kill -9 {}
sleep 1
./4.31.0/v2ray -config ./4.31.0/freedom.json &

