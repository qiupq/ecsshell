#!/bin/bash

cd /home/qq

#set evironment
if [ -f .gitconfig ]; then    
	echo "check done  --- .gitconfig" 
	
else                                                                                   
	echo "create .gitconfig"  
	
git config --global user.email "qiuworker@126.com"
git config --global user.name "qq"
fi 

if [ -f .ssh/id_rsa.pub ]; then    
	echo "check done  --- .ssh/id_rsa.pub" 
	
else                                                                                   
	echo "create .ssh/id_rsa.pub"  
	
ssh-keygen  -t rsa -P '' -f ~/.ssh/id_rsa
fi 
function get_android_code
{
	echo "get android code"
	mkdir -p android_pie
	cd android_pie
	repo init -u https://github.com/AOSiP/platform_manifest.git -b pie
#repo init -u  git://github.com/AOSiP/platform_manifest.git -b pie
	repo sync -j`nproc` --no-repo-verify --force-sync --no-tags --no-clone-bundle
#repo sync --no-tags --no-clone-bundle --no-repo-verify
    repo start android-pie --all
}
function build_android
{
	echo "build android"
	cd /home/qq/android_pie

	source build/envsetup.sh
# Preparing a Compiler Cache
    export USE_CCACHE=1
	prebuilts/misc/linux-x86/ccache/ccache -M 15G

	lunch aosip_device-userdebug
	#make -j8 2>&1 |tee -a androidbuild.log
    time mka kronic
#clean up the result of previous builds	
#make clobber
}
export LANG=en_US.UTF-8

export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4g"

export ANDROID_JACK_VM_ARGS="-Xmx4g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

if [ $1 == "test" ]
then
	echo "test"
	get_android_code
else
	echo "phyteclinux"
	#build_android
fi
