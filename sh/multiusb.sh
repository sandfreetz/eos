#!/bin/bash
#-----------------------------------------------------------------------
# - usb-boot
echo '#MULTISYSTEM \ndeb http://liveusb.info/multisystem/depot all main' >>/etc/apt/sources.list
wget -q http://liveusb.info/multisystem/depot/multisystem.asc -O- | apt-key add - 
apt-get update
apt-get install multisystem unetbootin



