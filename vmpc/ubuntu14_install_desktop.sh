#!/bin/bash
#https://askubuntu.com/questions/680413/14-04-3-xrdp-gnome-session-session-ubuntu-2d-not-work

apt-get install --install-recommends ubuntu-desktop --yes
apt-get install xrdp  gnome-session-fallback --yes
#echo "gnome-session --session=ubuntu-2d" > ~/.xsession

apt-add-repository ppa:ubuntu-mate-dev/ppa
apt-add-repository ppa:ubuntu-mate-dev/trusty-mate
apt-get update 
#apt-get upgrade
apt-get install mate-core mate-desktop-environment mate-notification-daemon ubuntu-mate-desktop --yes
echo mate-session >~/.xsession 

