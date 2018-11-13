#!/bin/bash

sudo docker run -it --rm --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly \
        --manual \
        --agree-tos \
        --manual-public-ip-logging-ok \
        --preferred-challenges dns-01 \
        --server https://acme-v02.api.letsencrypt.org/directory \
        -d example.com -d *.example.com