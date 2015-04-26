#!/bin/bash
----------------------------------------------------------------
#___VARIABLE
internet=0
#-----------------------------------------------------------------------		
#line
cat ./sx/line
#___SYSINFO
# - motd
cat ./sx/mog
# - issue.net
cat /etc/issue.net
# - check
uname -rsom
# - line
cat ./sx/line
# - disk-free
df -hT /dev/sda1
#-----------------------------------------------------------------------
# - line
#___CONFIRM
cat ./sx/line
while true; do
    read -p ">> Now we check some things  >  are you okey ?	 y or n :" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "dude  y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___PING-HEISE.DE
while [ $internet -ne 1 ]; do
        dig heise.de
        if [ $? -eq  0 ]; then
                apt-get update && apt-get upgrade;
                internet=1;
        else
                #line
				cat ./sx/line
                echo "Maschine needs internet-connection !! "
                #line
				cat ./sx/line                
                exit
        fi
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___INTERNET-OKAY
echo "Internet-connection okay >> Packages upgraded > Script will now start"
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___ELEMENTARY-OS
while true; do
    read -p "Using ELEMENTARY-OS?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/eos.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___ADD-Software
while true; do
    read -p "Want to add some PROGRAMMS?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/add.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
while true; do
    read -p "Do you wish to install MTP-PATCH?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/mtp.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___SYSTEMBACK
while true; do
    read -p "Do you wish to install SYSTEMBACK?  y or n :" yn
    case $yn in
        [Yy]* ) bash ./sh/systemback.sh; break;;
        [Nn]* ) break;;
        * ) echo "y or n ?";;
    esac
done
#-----------------------------------------------------------------------
#___FIX DEP___AUTOREMOVE___CLEAN
apt-get -f install
apt-get autoremove -y
apt-get clean
#-----------------------------------------------------------------------
# - line
cat ./sx/line
#___REBOOT
while true; do
    read -p "Ready to FUCK?  y or n :" yn
    case $yn in
        [Yy]* ) shutdown -r +1; break;;
        [Nn]* ) exit;;
        * ) echo "y or n ?";;
    esac
done
