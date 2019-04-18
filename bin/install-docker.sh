#!/bin/bash

sudo apt install apt-transport-https ca-certificates

sudo sh -c "echo 'deb [arch=amd64] https://download.docker.com/linux/ubuntu '$(lsb_release -cs)' stable' > /etc/apt/sources.list.d/docker.list"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt update
sudo apt install docker-ce