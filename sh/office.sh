#!/bin/bash

wget -P ./takes/deb http://sourceforge.net/projects/openofficeorg.mirror/files/4.1.0/binaries/de/Apache_OpenOffice_4.1.0_Linux_x86_install-deb_de.tar.gz
tar xzf ./takes/deb/Apache_OpenOffice_4.1.0_Linux_x86_install-deb_de.tar.gz -C ./takes/deb
dpkg -i ./takes/deb/de/DEBS/*.deb
dpkg -i ./takes/deb/de/DEBS/desktop-integration/*.deb
apt-get -f install -y
