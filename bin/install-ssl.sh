#!/bin/bash

if [ "$1" = "" ]
then
    echo "Usage: $0 <base_domain_name>"
    exit 1
fi

# Install certificates
source="https://raw.githubusercontent.com/devemio/laravel-nginx-configs/develop/certbot/certonly.sh"
file="$(mktemp /tmp/certonly.sh.XXXXXX)"
sudo wget -q -O $file $source
sudo bash $file $1
sudo rm -f "$file"

# Install options-ssl-nginx
sudo wget -q -O /etc/letsencrypt/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/options-ssl-nginx.conf

# Install ssl-dhparams
sudo rm -f /etc/letsencrypt/ssl-dhparams.pem && \
sudo openssl dhparam -out /etc/letsencrypt/ssl-dhparams.pem 2048

# Restart nginx
sudo systemctl reload nginx