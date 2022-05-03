#!/bin/bash

rm -rf /tmp/build
scp niah-parser@199.66.93.24:/tmp/niahweb_latest.tar /tmp/
cd /tmp
tar -xvf niahweb_latest.tar
sudo rm -rf /var/www/html/*
sudo cp -r build/* /var/www/html/
sudo chmod 755 /var/www/html/ -R
