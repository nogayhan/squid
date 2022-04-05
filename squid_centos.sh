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
iptables -I INPUT -p tcp --dport 3134 -j ACCEPT
iptables -I INPUT -p tcp --dport 3135 -j ACCEPT
iptables -I INPUT -p tcp --dport 3136 -j ACCEPT
iptables -I INPUT -p tcp --dport 3137 -j ACCEPT
iptables -I INPUT -p tcp --dport 3138 -j ACCEPT
iptables -I INPUT -p tcp --dport 3139 -j ACCEPT
iptables -I INPUT -p tcp --dport 3140 -j ACCEPT
iptables -I INPUT -p tcp --dport 3141 -j ACCEPT
iptables -I INPUT -p tcp --dport 3142 -j ACCEPT
iptables -I INPUT -p tcp --dport 3143 -j ACCEPT
iptables -I INPUT -p tcp --dport 3144 -j ACCEPT
iptables -I INPUT -p tcp --dport 3145 -j ACCEPT
iptables -I INPUT -p tcp --dport 3146 -j ACCEPT
iptables -I INPUT -p tcp --dport 3147 -j ACCEPT
iptables -I INPUT -p tcp --dport 3148 -j ACCEPT
iptables -I INPUT -p tcp --dport 3149 -j ACCEPT
iptables -I INPUT -p tcp --dport 3150 -j ACCEPT
iptables -I INPUT -p tcp --dport 3151 -j ACCEPT
iptables -I INPUT -p tcp --dport 3152 -j ACCEPT
iptables -I INPUT -p tcp --dport 3153 -j ACCEPT
iptables -I INPUT -p tcp --dport 3154 -j ACCEPT
iptables -I INPUT -p tcp --dport 3155 -j ACCEPT
iptables -I INPUT -p tcp --dport 3156 -j ACCEPT
iptables -I INPUT -p tcp --dport 3157 -j ACCEPT
iptables -I INPUT -p tcp --dport 3158 -j ACCEPT
iptables -I INPUT -p tcp --dport 3159 -j ACCEPT
iptables -I INPUT -p tcp --dport 3160 -j ACCEPT
iptables -I INPUT -p tcp --dport 3161 -j ACCEPT
iptables -I INPUT -p tcp --dport 3162 -j ACCEPT
iptables -I INPUT -p tcp --dport 3163 -j ACCEPT
iptables -I INPUT -p tcp --dport 3164 -j ACCEPT
iptables -I INPUT -p tcp --dport 3165 -j ACCEPT
iptables -I INPUT -p tcp --dport 3166 -j ACCEPT
iptables -I INPUT -p tcp --dport 3167 -j ACCEPT
iptables -I INPUT -p tcp --dport 3168 -j ACCEPT
iptables -I INPUT -p tcp --dport 3169 -j ACCEPT
iptables -I INPUT -p tcp --dport 3170 -j ACCEPT
iptables -I INPUT -p tcp --dport 3171 -j ACCEPT
iptables -I INPUT -p tcp --dport 3172 -j ACCEPT
iptables -I INPUT -p tcp --dport 3173 -j ACCEPT
iptables -I INPUT -p tcp --dport 3174 -j ACCEPT
iptables -I INPUT -p tcp --dport 3175 -j ACCEPT
iptables -I INPUT -p tcp --dport 3176 -j ACCEPT
iptables -I INPUT -p tcp --dport 3177 -j ACCEPT
iptables -I INPUT -p tcp --dport 3178 -j ACCEPT
iptables -I INPUT -p tcp --dport 3179 -j ACCEPT
iptables -I INPUT -p tcp --dport 3180 -j ACCEPT
iptables -I INPUT -p tcp --dport 3181 -j ACCEPT
iptables -I INPUT -p tcp --dport 3182 -j ACCEPT
iptables -I INPUT -p tcp --dport 3183 -j ACCEPT
iptables -I INPUT -p tcp --dport 3184 -j ACCEPT
iptables -I INPUT -p tcp --dport 3185 -j ACCEPT
iptables -I INPUT -p tcp --dport 3186 -j ACCEPT
iptables -I INPUT -p tcp --dport 3187 -j ACCEPT
iptables -I INPUT -p tcp --dport 3188 -j ACCEPT
iptables -I INPUT -p tcp --dport 3189 -j ACCEPT
iptables -I INPUT -p tcp --dport 3190 -j ACCEPT
iptables -I INPUT -p tcp --dport 3191 -j ACCEPT
iptables -I INPUT -p tcp --dport 3192 -j ACCEPT
iptables -I INPUT -p tcp --dport 3193 -j ACCEPT
iptables -I INPUT -p tcp --dport 3194 -j ACCEPT
iptables -I INPUT -p tcp --dport 3195 -j ACCEPT
iptables -I INPUT -p tcp --dport 3196 -j ACCEPT
iptables -I INPUT -p tcp --dport 3197 -j ACCEPT
iptables -I INPUT -p tcp --dport 3198 -j ACCEPT
iptables -I INPUT -p tcp --dport 3199 -j ACCEPT
iptables -I INPUT -p tcp --dport 3200 -j ACCEPT
iptables -I INPUT -p tcp --dport 3201 -j ACCEPT
iptables -I INPUT -p tcp --dport 3202 -j ACCEPT
iptables -I INPUT -p tcp --dport 3203 -j ACCEPT
iptables -I INPUT -p tcp --dport 3204 -j ACCEPT
iptables -I INPUT -p tcp --dport 3205 -j ACCEPT
iptables -I INPUT -p tcp --dport 3206 -j ACCEPT
iptables -I INPUT -p tcp --dport 3207 -j ACCEPT
iptables -I INPUT -p tcp --dport 3208 -j ACCEPT
iptables -I INPUT -p tcp --dport 3209 -j ACCEPT
iptables -I INPUT -p tcp --dport 3210 -j ACCEPT
iptables -I INPUT -p tcp --dport 3211 -j ACCEPT
iptables -I INPUT -p tcp --dport 3212 -j ACCEPT
iptables -I INPUT -p tcp --dport 3213 -j ACCEPT
iptables -I INPUT -p tcp --dport 3214 -j ACCEPT
iptables -I INPUT -p tcp --dport 3215 -j ACCEPT
iptables -I INPUT -p tcp --dport 3216 -j ACCEPT
iptables -I INPUT -p tcp --dport 3217 -j ACCEPT
iptables -I INPUT -p tcp --dport 3218 -j ACCEPT
iptables -I INPUT -p tcp --dport 3219 -j ACCEPT
iptables -I INPUT -p tcp --dport 3220 -j ACCEPT
iptables -I INPUT -p tcp --dport 3221 -j ACCEPT
iptables -I INPUT -p tcp --dport 3222 -j ACCEPT
iptables -I INPUT -p tcp --dport 3223 -j ACCEPT
iptables -I INPUT -p tcp --dport 3224 -j ACCEPT
iptables -I INPUT -p tcp --dport 3225 -j ACCEPT
iptables -I INPUT -p tcp --dport 3226 -j ACCEPT
iptables -I INPUT -p tcp --dport 3227 -j ACCEPT

#/sbin/iptables-save
/sbin/service iptables save

systemctl restart squid
systemctl enable squid
systemctl status squid
#update-rc.d squid defaults
