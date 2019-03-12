#!/bin/bash


echo ##############################################
echo ## PATCHING THE SYSTEM THIS WILL TAKE A BIT ##
echo ##############################################

echo 'Acquire::ForceIPv4 "true";' > /etc/apt/apt.conf.d/99force-ipv4

apt update -y -qq && apt upgrade -y -qq 

clear
echo #############################################
echo ##      INSTALLING NEEDED BITS FOR ME      ##
echo #############################################

apt install -y \
htop \
vim \
git \
curl \
fail2ban 

git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh

git clone https://github.com/anudeepND/whitelist.git
cd whitelist/scripts
sudo chmod +x whitelist.sh
sudo ./whitelist.sh


echo ##############################################
echo ### SETUP IS NOW COMPLETE - FREE TO BUILD ####
echo ##############################################

