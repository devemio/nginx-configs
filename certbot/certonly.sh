#!/bin/bash

if [ "$1" = "" ]
then
    echo "Usage: $0 <base_domain_name>"
    exit 1
fi

docker run -it --rm --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly \
        --manual \
        --agree-tos \
        --manual-public-ip-logging-ok \
        --preferred-challenges dns-01 \
        --server https://acme-v02.api.letsencrypt.org/directory \
        -d $1 -d *.$1
