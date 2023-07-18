#!/bin/bash

#install apps
yum install -y epel-release policycoreutils-python
yum install -y nginx
#change nginx port
sed -ie 's/:80/:4881/g' /etc/nginx/nginx.conf
sed -i 's/listen       80;/listen       4881;/' /etc/nginx/nginx.conf
systemctl restart nginx
