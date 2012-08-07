#!/bin/bash

# --------------------------------------------------------------------------------
# yt-install-hdmi-0.1.sh
# author: filippo.bilardo
# date: 03.08.12
#
# http://www.raspberrypi.org/phpBB3/viewtopic.php?f=35&t=8157
# --------------------------------------------------------------------------------

echo "Installation of youtube-dl, whitey-0.1 python gui."
echo
read -p "Press any key to continue..." -n1 -s
echo

wget https://github.com/rg3/youtube-dl/raw/2012.02.27/youtube-dl
sudo chmod +x youtube-dl
sudo cp youtube-dl /usr/bin/youtube-dl
sudo apt-get install -y python-setuptools
wget http://pypi.python.org/packages/source/w/whitey/whitey-0.1.tar.gz
tar -zxvf whitey-0.1.tar.gz

sed -i "s/'mplayer', '-quiet', '-fs', '--'/'omxplayer', '-olocal'/g" whitey-0.1/src/yt/__init__.py

cd whitey-0.1
sudo python setup.py install
cd ..

rm whitey-0.1.tar.gz
sudo rm -rf  whitey-0.1
rm youtube-dl

# --------------------------------------------------------------------------------
