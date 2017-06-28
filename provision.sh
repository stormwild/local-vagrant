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

# Install git

sudo apt-get update

sudo apt-get install git

git config --global user.name "Alexander R Torrijos"
git config --global user.email "artorrijos@gmail.com"


# Install Nvm/Node

sudo apt-get update

sudo apt-get -y install build-essential libssl-dev

curl https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

source .profile

# Confirm nvm exists
# Note which nvm will not work since nvm is a sourced shell function not an executable binary

command -v nvm

# Install node

nvm install node

# v8.1.2

node -v

# 5.0.3

npm -v

# Install yarn globally as well

npm install -g yarn

# Check Yarn

yarn -v

# yarn install v0.24.5

# List global packages

npm list -g --depth=0


# Install Composer

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer


# Install Rvm/Ruby

# Install Python
