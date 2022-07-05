#!/bin/sh

echo 'cd to root'
cd 

echo 'Installing wget'
sudo apt install wget

echo 'Installing golang...'
# Download Go
sudo wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
# Install at root
sudo tar -xvzf go1.15.2.linux-amd64.tar.gz 

echo 'Installing python...'
sudo apt-get update
sudo apt-get install python3.8

echo 'cd to ~/go/src'
cd ~/go/src

echo 'Install gus-automation...'
git clone https://github.com/zhouaea/gus-automation.git

echo 'Installing epaxos-demo...'
https://github.com/cadumas01/epaxos-demo.git

# echo 'Installing gryff-testing...'
# git clone https://github.com/bc-computing/gryff-testing.git