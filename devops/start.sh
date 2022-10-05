#!/bin/basha
set -eu

echo "start baoconf"
supervisord -c /data/app/devops/conf/supervisor/supervisord.conf

/usr/local/sbin/php-fpm