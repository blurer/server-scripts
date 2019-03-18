#!/bin/bash

sudo yum update -y 

sudo yum upgrade -y

sudo yum install epel-release -y

sudo yum groupinstall -y  "development tools"

sudo yum install -y \
  wget \
  git \
  curl \
  unzip \
  htop \
  vim \
  python-pip \
  nmap \
  ansible \
  
  python-setuptools

cd ~
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
tar -xvf Python-3.7.2.tar.xz
cd Python-3.7.2/
./configure --enable-optimizations
sudo make altinstall

pip install shodan --user
pip install sshmenu --user
pip install speedtest-cli --user

(cd /tmp && git clone --depth 1 --config core.autocrlf=false https://github.com/twolfson/sexy-bash-prompt && cd sexy-bash-prompt && make install) && source ~/.bashrc

