#!/bin/bash
#-----------------------------------------------------------------------
# - vboxaddconf
apt-get -y install dkms build-essential linux-headers-$(uname -r)
#-----------------------------------------------------------------------
# - vboxmake
apt-get -y install virtualbox virtualbox-qt virtualbox-dkms virtualbox-guest-dkms
#-----------------------------------------------------------------------
# - vboxaddusb
echo "Choose USER to add-vboxusers:"
users
read -p "Type in USER-NAME: " user
adduser user vboxusers
#-----------------------------------------------------------------------
#newgrp - vboxusers 
apt-get -y install virtualbox-guest-additions-iso 
#-----------------------------------------------------------------------
#
wget -P ./takes http://download.virtualbox.org/virtualbox/4.3.10/Oracle_VM_VirtualBox_Extension_Pack-4.3.10.vbox-extpack  
#-----------------------------------------------------------------------
# - vboxexpension
VBoxManage extpack install ./takes/Oracle_VM_VirtualBox_Extension_Pack-4.3.10.vbox-extpack

apt-get -f install -y
