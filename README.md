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

sudo cp /etc/nginx/base/examples/nginx.conf /etc/nginx/nginx.conf
sudo cp /etc/nginx/base/examples/conf.d/default.conf /etc/nginx/conf.d/default.conf

sudo systemctl reload nginx
```

## Usage

```
mkdir /var/www/example.com
cp /etc/nginx/base/examples/conf.d/example.conf /etc/nginx/conf.d/example.conf
```