#!/bin/bash
#-----------------------------------------------------------------------
# - MTP
cat ./takes/51-android.rules >/etc/udev/rules.d/51-android.rules
chmod a+r /etc/udev/rules.d/51-android.rules
service udev restart
apt-get -y install android-tools-adb android-tools-fastboot


