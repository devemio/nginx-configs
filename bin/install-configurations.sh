#!/bin/bash

if [ "$1" = "" ]
then
    echo "Usage: $0 <base_domain_name>"
    exit 1
fi

# Clone h5bp
sudo rm -rf /etc/nginx/server-configs-nginx && \
sudo mkdir /etc/nginx/server-configs-nginx && \
sudo chown $(whoami) /etc/nginx/server-configs-nginx && \
git clone https://github.com/h5bp/server-configs-nginx.git /etc/nginx/server-configs-nginx

# Clone base configurations
sudo rm -rf /etc/nginx/base && \
sudo sudo mkdir /etc/nginx/base && \
sudo chown $(whoami) /etc/nginx/base && \
git clone https://github.com/devemio/laravel-nginx-configs.git /etc/nginx/base

# Install default and wildcard domain configurations
sudo cp /etc/nginx/base/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp /etc/nginx/base/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
sudo cp /etc/nginx/base/nginx/conf.d/wildcard.conf /etc/nginx/conf.d/wildcard.conf

# Replace path to ssl certificates
sed -i "s|example.com|$1|g" /etc/nginx/conf.d/default.conf
sed -i "s|example.com|$1|g" /etc/nginx/conf.d/wildcard.conf

# Restart nginx
sudo systemctl reload nginx

# Install base html page
sudo mkdir -p /var/www/html
sudo echo "OK" > /var/www/html/index.html
sudo chown $(whoami) /var/www/html/index.html