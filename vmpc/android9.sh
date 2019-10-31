#!/bin/bash

mkdir -p /home/qq/
cd /home/qq

#set evironment
git config --global user.email "qiuworker@126.com"
git config --global user.name "qq"
function get_android_code
{
	echo "get android code"
	mkdir -p android_pie
	cd android_pie
	repo init -u https://github.com/AOSiP/platform_manifest.git -b pie
#repo init -u  git://github.com/AOSiP/platform_manifest.git -b pie
	repo sync --force-sync --no-tags --no-clone-bundle
#repo sync --no-tags --no-clone-bundle --no-repo-verify
}
function build_android
{
	echo "build android"
	cd /home/qq/android_pie
	source build/envsetup.sh
	
	lunch aosip_device-userdebug
    time mka kronic
	
}
export LANG=en_US.UTF-8


if [ $1 == "test" ]
then
	echo "test"
	get_android_code
else
	echo "phyteclinux"
	build_android
fi
