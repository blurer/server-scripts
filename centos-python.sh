#!/bin/bash

sudo yum install -y  "development tools"

sudo yum install -y \
  libffi-devel \
  zlib-devel \
  bzip2-devel \
  openssl-devel \
  ncurses-devel \
  sqlite-devel \
  readline-devel \
  tk-devel \
  gdbm-devel \
  db4-devel \
  libpcap-devel \
  xz-devel \
  expat-devel

cd ~
wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
tar -xvf Python-3.7.2.tar.xz
cd Python-3.7.2/
./configure --enable-optimizations
sudo make altinstall

