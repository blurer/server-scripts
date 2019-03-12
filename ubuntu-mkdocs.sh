#!/bin/bash


echo ##############################################
echo ## PATCHING THE SYSTEM THIS WILL TAKE A BIT ##
echo ##############################################

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
fail2ban \
python \
python-pip \
python-setuptools 

clear
echo #############################################
echo ##     INSTALL WEB BACK END      ##
echo #############################################

pip install mkdocs click-man 
pip install mkdocs-bootswatch

clear
echo ##############################################
echo ### SETUP IS NOW COMPLETE - FREE TO BUILD ####
echo ##############################################
