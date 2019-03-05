#!/bin/bash

#Update OS
sudo yum update -y

sudo yum upgrade -y

sudo yum groupinstall -y "development tools"

sudo yum install epel-release -y 

# Installing Tools

sudo yum install -y \
htop \
git \
vim \
python \
python-pip \
python-setuptools \
wget \
curl \
unzip \
bzip2 \
fail2ban \
nmap \
python36 


# Installing PIP modules
sudo pip install ansible
sudo pip install shodan
sudo pip install speedtest-cli
sudo pip install netaddr
