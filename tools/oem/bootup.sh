#!/bin/bash

sleep 300

echo 1 > /proc/sys/net/ipv4/ip_forward

echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all

n=10
while [ $n -lt 1000 ]; do
	sleep 1800
    echo "3" > /proc/sys/vm/drop_caches
done 

exit 0
