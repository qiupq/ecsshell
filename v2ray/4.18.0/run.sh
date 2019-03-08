#!/bin/bash

mkdir -p /var/log/v2ray/
touch /var/log/v2ray/error.txt
touch /var/log/v2ray/access.txt

./v2ray -config ../service_ws-tls-nginx.json & 
