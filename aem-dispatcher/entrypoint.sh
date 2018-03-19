#! /bin/bash -eu

set -e

#Symbolic link for the Dispatcher module
cd /usr/lib/apache2/modules/
ln -s dispatcher-apache2.4-4.2.3.so mod_dispatcher.so

#Enable dispatcher modules and it's configs
cd /etc/apache2/mods-enabled/
ln -s ../mods-available/dispatcher.load dispatcher.load
ln -s ../mods-available/dispatcher.conf dispatcher.conf

# Start Apache
/usr/sbin/apache2ctl -D FOREGROUND