#!/usr/bin/env bash

# Update Ubuntu

sudo apt-get -y update

sudo apt-get -y upgrade

sudo apt-get -y dist-upgrade

# Install Apache

sudo apt-get -y install apache2 apache2-utils

systemctl status apache2

# If not running, use systemctl to start it.

sudo systemctl start apache2

# Enable Apache to automatically start when Ubuntu is rebooted.

sudo systemctl enable apache2

# Enable ssl

sudo a2enmod ssl

# Enable modrewrite

sudo a2enmod rewrite

# Restart Apache

sudo systemctl start apache2

# Check Apache version:

apache2 -v

# Make www-data (Apache user) as the owner of web root directory.

sudo chown www-data:www-data -R /var/www/html/

sudo find /var/www/html -type d -exec chmod g+s {} \;

# Install PHP

sudo add-apt-repository ppa:ondrej/php

sudo apt-get -y update

sudo apt-get -y upgrade

# (optional) sudo apt-get remove php7.0

sudo apt-get install php7.1

sudo apt-get install -y \
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


# sudo a2dismod php5
# sudo a2dismod php7.0

sudo a2enmod php7.1

# Restart Apache

sudo systemctl start apache2

# Install MariaDB

sudo apt-get -y install mariadb-server mariadb-client

sudo systemctl start mysql

sudo systemctl enable mysql

sudo mysql_secure_installation

# Install MySQL

mkdir tmp  && cd /tmp

curl -OL https://dev.mysql.com/get/mysql-apt-config_0.8.3-1_all.deb

sudo dpkg -i mysql-apt-config*

sudo apt-get update

rm mysql-apt-config*

sudo apt-get -y install mysql-server

systemctl status mysql

sudo mysql_secure_installation

# root / root
