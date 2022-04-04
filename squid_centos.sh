#!/bin/bash
# <UDF name="squid_user" Label="Proxy Username" />
# <UDF name="squid_password" Label="Proxy Password" />
# Squid Proxy Server
# Author: admin@hostonnet.com
# Blog: https://blog.hostonnet.com
# Edits: Khaled AlHashem
# Site: https://knaved.com
# Version 0.1

squid_user=yas10
squid_password=Yasin_1453

yum -y install squid httpd-tools

htpasswd -b -c /etc/squid/passwd $squid_user $squid_password

mv /etc/squid/squid.conf /etc/squid/squid.conf.bak
touch /etc/squid/blacklist.acl
wget -O /etc/squid/squid.conf  https://raw.githubusercontent.com/nogayhan/squid/master/squid_centos.conf

iptables -I INPUT -p tcp --dport 3128 -j ACCEPT
iptables -I INPUT -p tcp --dport 3129 -j ACCEPT
iptables -I INPUT -p tcp --dport 3130 -j ACCEPT
iptables -I INPUT -p tcp --dport 3131 -j ACCEPT
iptables -I INPUT -p tcp --dport 3132 -j ACCEPT
iptables -I INPUT -p tcp --dport 3133 -j ACCEPT
#/sbin/iptables-save
/sbin/service iptables save

systemctl restart squid
systemctl enable squid
systemctl status squid
#update-rc.d squid defaults
