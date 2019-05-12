#!/bin/sh

# Update OS

sudo apt update -y -qq 
sudo apt upgrade -y -qq

# Installing Programs

sudo apt install -y -qq \
	htop \
	vim \
	git \
	curl \
	ansible \
	zsh \
	nmap \
	wireshark \
	tshark \
	python3-pip \
	python-setuptools \
	build-essential \
	speedtest-cli \
	glances \
	python-apt \
	p7zip \
	rclone \
	scrot \
	ffmpeg \
	youtube-dl \
        apt-transport-https

# Git setup - You will need to configure for you

git config --global user.name 'NAME'
git config --global user.email 'email@address.com'

# Install PIP things

pip3 install netmiko --user
pip3 install sshmenu --user
pip3 install paramiko --user
pip3 install shodan --user
pip3 install netaddr --user

# Snap Installs

sudo snap install spotify
sudo snap install obs-studio
sudo snap install discord
sudo snap install fast
sudo snap install bw
sudo snap install lxd


# Steam Install

cd ~
mkdir steam-install && cd steam-install
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb

clear
# NOTES
echo 'Everything Installed.'
echo 'LXD: lxd init to setup'
echo 'Shodan: shodan init <api key> to setup'
