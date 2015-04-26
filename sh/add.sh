#!/bin/bash
#
#___THIS-SCRIPT-ADD-SOFTWARE
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___FIREFOX
while true; do
    read -p "Do you want to install FIREFOX?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install firefox language-pack-de-base; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___CHROME
while true; do
    read -p "Do you want to install CHROME?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/chrome.sh ; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___TEAMVIEWER
while true; do
    read -p "Do you want to install TEAMVIEWER?  y or n :" yn
    case $yn in
        [Yy]* ) echo "Wich version of Teamviever you want to install, [x]86 or [a]md64?"
read ANTWORT
if [ "$ANTWORT" == "x" ]
    then
        bash ./sh/teamv.sh 
    else
        bash ./sh/teamv64.sh 
fi; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___OPEN-OFFICE
while true; do
    read -p "Do you want to install OPEN-OFFICE?  y or n :" yn
    case $yn in
        [Yy]* ) echo "Wich version of OpenOffice4 you need, [x]86 or [a]md64?"
read ANTWORT
if [ "$ANTWORT" == "x" ]
    then
        bash ./sh/office.sh 
    else
        bash ./sh/office64.sh 
fi; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___KODI
while true; do
    read -p "Do you want to install KODI?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/kodi.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___VIRTUALBOX
while true; do
    read -p "Do you want to install VIRTUALBOX?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/vbox.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___MULTISYSTEM
while true; do
    read -p "Do you wish to install MULTISYSTEM?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/multiusb.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___JAVA
while true; do
    read -p "Do you want to install JAVA?  y or n :" yn
    case $yn in
        [Yy]* ) echo "Which version of Java you want to install, [7] or [8]?"
read ANTWORT
if [ "$ANTWORT" == "7" ]
    then
        bash ./sh/java7.sh 
    else
        bash ./sh/java8.sh 
fi; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___GIMP
while true; do
    read -p "Do you want to install GIMP?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/gimp.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___STEAM
while true; do
    read -p "Do you want to install STEAM?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install steam ; apt-get -f install -y; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___WINE
while true; do
    read -p "Do you wish to install WINE?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/wine.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___DOWNLOADER
while true; do
    read -p "Do you wish to install DOWNLOAD-MANAGER?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/downloader.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___CODECS
while true; do
    read -p "Do you wish to install CODECS?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install libxvidcore4 gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly gstreamer0.10-plugins-bad gstreamer0.10-plugins-bad-multiverse gstreamer0.10-alsa gstreamer0.10-fluendo-mp3 ; apt-get -f install -y; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___LIBDVDREAD4
while true; do
    read -p "Do you wish to install LIBDVDREAD4?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install libdvdread4 ; apt-get -f install -y && sh /usr/share/doc/libdvdread4/install-css.sh ; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___GNOME-DISK-UTILITY
#sh ./sh/downloader.sh
while true; do
    read -p "Do you wish to install GNOME-DISK-UTILITY?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install gnome-disk-utility ; apt-get -f install -y; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___RESTRICTED-EXTRAS
while true; do
    read -p "Do you wish to install RESTRICTED-EXTRAS?  y or n :" yn
    case $yn in
        [Yy]* ) apt-get -y install ubuntu-restricted-extras ; apt-get -f install -y; break;;
        [Nn]* ) exit;;
        * ) echo "y or n ?";;
    esac
done

