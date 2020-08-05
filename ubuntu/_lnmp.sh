#!/bin/bash

# 安装集成nginx、php7.2、mysql的环境

if [[ ! `which php7.2` ]]; then
    curl -o- https://raw.githubusercontent.com/eoogo/du-aide/master/php-install-7.2.sh
    service php7.2-fpm start
fi

if [[ ! `which nginx` ]]; then
    curl -o- https://raw.githubusercontent.com/eoogo/du-aide/master/nginx-install.sh
    service nginx start
fi

if [[ ! `which mysql` ]]; then
    curl -o- https://raw.githubusercontent.com/eoogo/du-aide/master/mysql-install.sh
    service mysql start
fi

