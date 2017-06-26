Given Ubuntu 14.04, the following will update PHP to PHP7.1

```
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update

sudo apt-get upgrade

sudo apt-get install php

sudo a2dismod php5

sudo a2enmod php7.1

service apache2 restart

sudo apt-get install -y \
             php \
             libapache2-mod-php \
             php-fpm \
             php-mysql \
             php-memcached \
             php-pear \
             php-xml \
             php-mbstring \
             php-xdebug \
             php-intl \
             php-curl \
             php-gd \
             php-zip \
             php-json \
             
```

References:

[How To Upgrade to PHP 7 on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04)

[How to enable php7 module in apache?](https://stackoverflow.com/questions/35988990/how-to-enable-php7-module-in-apache)

