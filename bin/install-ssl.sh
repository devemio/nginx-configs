#!/bin/bash

if [ "$1" = "" ]
then
    echo "Usage: $0 <base_domain_name>"
    exit 1
fi

sudo ./certbot/certonly.sh $1
sudo wget https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/options-ssl-nginx.conf -P /etc/letsencrypt
sudo openssl dhparam -out /etc/letsencrypt/ssl-dhparams.pem 2048
sudo systemctl reload nginx