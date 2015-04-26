#!/bin/bash
#-----------------------------------------------------------------------
#line
cat ./sx/line
while true; do
    read -p "Do you wish to install WINE1.7? y or n :" yn
    case $yn in
        [Yy]* ) add-apt-repository ppa:ubuntu-wine/ppa -y && apt-get update && apt-get -y install wine1.7 ; apt-get -f install -y; break;;
        [Nn]* ) apt-get install wine ; apt-get -f install -y; break;;
        * ) echo "y or n ?";;
    esac
done
