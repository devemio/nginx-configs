# Wildcard Nginx Configs for Laravel with SSL

This script allows you to quickly deploy the latest version of nginx web server, configure wildcard domain routing, install a secure ssl wildcard certificate through letsencrypt. This installation has been tested on **Ubuntu 16.04** and **Nginx 1.15.11**.

Based on [Nginx Server Configs](https://github.com/h5bp/server-configs-nginx).

## Installation

#### Install Nginx (optional)

```bash
./bin/install-nginx.sh
```

#### Install Docker (optional)

```bash
./bin/install-docker.sh
```

### 1. Install nginx configurations

```bash
./bin/install-configurations.sh <base_domain_name>
```

The following files will be created:

```
/etc/nginx
  |- server-configs-nginx // base configurations from h5bp
  |- base                 // bash nginx configurations
  |- conf.d
  |  |- default.conf
  |  |- wildcard.conf
  |- nginx.conf
```

### 2. Install wildcard ssl certificates using letsencrypt

```bash
./bin/install-ssl.sh <base_domain_name>
```

The following files will be created:

```
/etc/letsencrypt
  |- live
  |- options-ssl-nginx.conf
  |- ssl-dhparams.pem
```
