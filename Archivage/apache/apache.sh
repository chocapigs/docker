#!/bin/bash
echo "127.0.0.1 archivage.dev" >> /etc/hosts
source /etc/apache2/envvars
rm /var/run/apache2/apache2.pid
tail -f /var/log/apache2/error.log &
exec apache2 -D FOREGROUND
