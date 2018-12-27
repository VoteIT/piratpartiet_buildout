#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/piratpartiet_buildout/etc/nginx.conf ./sites-available/piratpartiet.conf
cd sites-enabled
ln -s ../sites-available/piratpartiet.conf

service nginx stop
certbot certonly --standalone -d piratpartiet.voteit.se
service nginx start
