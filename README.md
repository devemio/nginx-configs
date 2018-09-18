# Laravel nginx configurations

## Installation

Tested on

```
nginx -v

nginx version: nginx/1.15.3
```

```
git clone https://github.com/h5bp/server-configs-nginx.git /etc/nginx/server-configs-nginx
git clone git@github.com:isswp101/laravel-nginx-configs.git /etc/nginx/base
cp /etc/nginx/base/examples/nginx.conf /etc/nginx/nginx.conf
cp /etc/nginx/base/examples/conf.d/default.conf /etc/nginx/conf.d/default.conf
```

## Usage

```
mkdir /var/www/example.com
cp /etc/nginx/base/examples/conf.d/example.conf /etc/nginx/conf.d/example.conf
```