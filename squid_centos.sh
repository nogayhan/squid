#!/bin/bash
# <UDF name="squid_user" Label="Proxy Username" />
# <UDF name="squid_password" Label="Proxy Password" />
# Squid Proxy Server
# Author: admin@hostonnet.com
# Blog: https://blog.hostonnet.com
# Edits: Khaled AlHashem
# Site: https://knaved.com
# Version 0.1

squid_user=
squid_password=

yum -y install squid httpd-tools

htpasswd -b -c /etc/squid/passwd $squid_user $squid_password

mv /etc/squid/squid.conf /etc/squid/squid.conf.bak
touch /etc/squid/blacklist.acl
wget -O /etc/squid/squid.conf  https://raw.githubusercontent.com/nogayhan/squid/master/squid_centos.conf

iptables -I INPUT -p tcp --dport 3128,3129,3130,3131,3132,3133,3134,3135,3136,3137,3138,3139,3140 -j ACCEPT
#/sbin/iptables-save
/sbin/service iptables save

systemctl restart squid
systemctl enable squid
systemctl status squid
#update-rc.d squid defaults
