#!/bin/bash

apt-get -y install gdebi
wget -P ./takes/deb download.teamviewer.com/download/version_10x/teamviewer_linux.deb
dpkg -i ./takes/deb/teamviewer_linux.deb
apt-get -f install -y
