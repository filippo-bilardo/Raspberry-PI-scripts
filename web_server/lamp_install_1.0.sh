#!/bin/bash
# -----------------------------------------------
# lamp_install_1.0.sh
# -----------------------------------------------
sudo addgroup --system www-data
sudo adduser www-data www-data

sudo apt-get update -y
sudo apt-get install -y lighttpd
sudo netstat -na
sudo apt-get install -y php5-cgi
sudo apt-get clean
sudo apt-get autoremove

sudo lighty-enable-mod cgi
sudo lighty-enable-mod fastcgi

sudo /etc/init.d/lighttpd force-reload
sudo service lighttpd restart

#modificare il file /etc/lighttpd/lighttpd.conf
#sudo pico /etc/lighttpd/lighttpd.conf
sudo echo '\n' >> /etc/lighttpd/lighttpd1.conf
sudo echo 'fastcgi.server = ( ".php" => (("bin-path" => "/usr/bin/php-cgi", "socket" => "/tmp/php.socket")) )' >> /etc/lighttpd/lighttpd1.conf
sudo echo '\n' >> /etc/lighttpd/lighttpd1.conf
sudo echo 'cgi.assign = (".py" => "/usr/bin/python",".pl" => "/usr/bin/perl")' >> /etc/lighttpd/lighttpd1.conf
sudo echo '\n' >> /etc/lighttpd/lighttpd1.conf
sudo echo 'server.error-handler-404 = "/index.html"' >> /etc/lighttpd/lighttpd1.conf
sudo echo '\n' >> /etc/lighttpd/lighttpd1.conf



echo "<?php phpinfo(); ?>" > /var/www/hello.php
#add:  <?php phpinfo(); ?>

# modifica di php.ini: mem file size upload
#modificare il file /etc/php5/cgi/php.ini

# Install my web site (hello.php, hello.py, hello.pl)
# -----------------------------------------------

