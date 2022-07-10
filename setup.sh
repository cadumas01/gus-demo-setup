#!/bin/sh

#echo 'cd to root'
#cd 

echo 'Installing wget'
sudo apt install wget

#echo 'Installing git...'
# apt-get install git

echo 'Installing golang...'
sudo wget -c https://golang.org/dl/go1.18.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
echo 'export PATH=${PATH}:/usr/local/go/bin' >>~/.bashrc
echo 'export GOPATH=~/go' >>~/.bashrc
echo 'export GO111MODULE="auto"' >>~/.bashrc
source ~/.bashrc
go version

# echo 'Installing python...'
sudo apt-get update
yes | sudo apt-get install python3

# echo Installing pip
yes Y| sudo apt-get install python3-pip

# install numpy
pip3 install numpy

# echo 'mkdir ~/go/src'
cd
mkdir go
cd go
mkdir src
cd src



echo 'Installing epaxos-demo...'
sudo git clone https://github.com/cadumas01/epaxos-demo.git
