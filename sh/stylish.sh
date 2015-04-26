#!/bin/bash
#-----------------------------------------------------------------------
# - tweaks
apt-add-repository ppa:mpstark/elementary-tweaks-daily -y
apt-get update
apt-get -y install elementary-tweaks
apt-get -f install -y

#-----------------------------------------------------------------------
# - numixthm
add-apt-repository ppa:numix/ppa -y
apt-get update
apt-get -y install numix-gtk-theme
apt-get -f install -y
#-----------------------------------------------------------------------
# - menulibre
apt-get -y install menulibre
#-----------------------------------------------------------------------
# - background
#cp ./takes/backgrounds/* /usr/share/backgrounds/

