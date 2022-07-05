#!/bin/sh

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
git install https://github.com/zhouaea/gus-automation.git

echo 'Installing gus-epaxos...'
https://github.com/bc-computing/gus-epaxos.git

echo 'Installing gryff-testing...'
https://github.com/bc-computing/gryff-testing.git