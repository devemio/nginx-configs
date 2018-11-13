# Wildcard laravel nginx letsencrypt configurations

## Installation

Tested on

```
nginx -v

nginx version: nginx/1.15.3
```

### Wildcard

```
sudo mkdir /etc/nginx/server-configs-nginx && sudo chown $(whoami) /etc/nginx/server-configs-nginx
git clone https://github.com/h5bp/server-configs-nginx.git /etc/nginx/server-configs-nginx

sudo mkdir /etc/nginx/base && sudo chown $(whoami) /etc/nginx/base
git clone https://github.com/isswp101/laravel-nginx-configs.git /etc/nginx/base

sudo cp /etc/nginx/base/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp /etc/nginx/base/nginx/conf.d/wildcard.conf /etc/nginx/conf.d/wildcard.conf

sudo systemctl reload nginx
```

### SSL

```
./certbot/certonly.sh
sudo wget https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/options-ssl-nginx.conf -P /etc/letsencrypt
sudo openssl dhparam -out /etc/letsencrypt/ssl-dhparams.pem 2048
sudo systemctl reload nginx
```