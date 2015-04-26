#!/bin/bash
#
#__THIS-SCRIPT-STYLES-EOS
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___PURGE-MIDORI
while true; do
    read -p "Do you wish to remove MIDORI? y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y remove --purge midori-granite; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___STYLE
while true; do
    read -p "Do you wish to STYLE? y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/stylish.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___PURGE-CAPNET-ASSIST
while true; do
    read -p "Do you wish to remove CAPNET-ASSIST? (login bug) y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y remove --purge capnet-assist; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done


