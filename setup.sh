#!/bin/sh

echo 'cd to root'
cd 

echo 'Installing wget'
sudo apt install wget

echo 'Installing golang...'
# Download Go
sudo wget -c https://golang.org/dl/go1.18.3.linux-amd64.tar.gz
# Install at root
sudo tar -C /root/ -xzf go1.13.5.linux-amd64.tar.gz
# Add to path
cd /etc/
echo "export PATH=$PATH:/root/go/bin" >> profile
source profile
echo "Just installed : "
go version
cd 


echo 'Installing python...'
sudo apt-get update
sudo apt-get install python3.8

echo 'cd to ~/go/src'
cd ~/go/src

echo 'Install gus-automation (gcp branch)...'
sudo git clone -b gcp https://github.com/zhouaea/gus-automation.git

echo 'Installing epaxos-demo...'
sudo git clone https://github.com/cadumas01/epaxos-demo.git

# echo 'Installing gryff-testing...'
# git clone https://github.com/bc-computing/gryff-testing.git