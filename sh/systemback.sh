#!/bin/bash
#-----------------------------------------------------------------------
# - SYSTEMBACK
add-apt-repository ppa:nemh/systemback -y
apt-get update
apt-get -y install systemback 

apt-get -f install -y
