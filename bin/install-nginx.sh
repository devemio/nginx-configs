#!/bin/bash

sudo sh -c "echo 'deb http://nginx.org/packages/mainline/ubuntu/ '$(lsb_release -cs)' nginx' > /etc/apt/sources.list.d/nginx.list"
sudo sh -c "echo 'deb-src http://nginx.org/packages/mainline/ubuntu/ '$(lsb_release -cs)' nginx' >> /etc/apt/sources.list.d/nginx.list"

wget https://nginx.org/keys/nginx_signing.key -O - | sudo apt-key add -

sudo apt update
sudo apt install nginx

sudo systemctl start nginx
sudo systemctl status nginx

sudo ufw allow https comment 'nginx'
sudo ufw allow http comment 'nginx'