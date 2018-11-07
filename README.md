# Laravel nginx configurations

## Installation

Tested on

```
nginx -v

nginx version: nginx/1.15.3
```

```
sudo mkdir /etc/nginx/server-configs-nginx && sudo chown $(whoami) /etc/nginx/server-configs-nginx
git clone https://github.com/h5bp/server-configs-nginx.git /etc/nginx/server-configs-nginx

sudo mkdir /etc/nginx/base && sudo chown $(whoami) /etc/nginx/base
git clone https://github.com/isswp101/laravel-nginx-configs.git /etc/nginx/base

sudo cp /etc/nginx/base/nginx/nginx.conf /etc/nginx/nginx.conf
sudo cp /etc/nginx/base/nginx/conf.d/wildcard.conf /etc/nginx/conf.d/wildcard.conf

sudo systemctl reload nginx
```