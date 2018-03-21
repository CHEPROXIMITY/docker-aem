#! /bin/bash -eu

set -e

#Symbolic link for the Dispatcher module
cd /usr/lib/apache2/modules/
if [ ! -f mod_dispatcher.so ]
then
    ln -s dispatcher-apache2.4-4.2.3.so mod_dispatcher.so
fi
#Enable dispatcher modules and it's configs
cd /etc/apache2/mods-enabled/
if [ ! -f dispatcher.load ]
then
    ln -s ../mods-available/dispatcher.load dispatcher.load
    ln -s ../mods-available/dispatcher.conf dispatcher.conf
fi
# Start Apache
exec /usr/sbin/apache2ctl -D FOREGROUND