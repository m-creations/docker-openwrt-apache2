## -*- docker-image-name: "mcreations/openwrt-apache2" -*-

FROM mcreations/openwrt-x64
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ADD image/root/ /

# install apache
# create subdirs for additional configuration and site defs
# all *.conf files are included into the main config
# this will be the mechanism to add custom applications
# to this base image
RUN opkg update &&\
    opkg install apache &&\
    rm /tmp/opkg-lists/* &&\
    mkdir -p /etc/apache/conf/ &&\
    mkdir -p /etc/apache/sites/ &&\
    printf "Include /etc/apache/conf/*.conf\n" >> /etc/apache/httpd.conf &&\
    printf "Include /etc/apache/sites/*.conf\n\n" >> /etc/apache/httpd.conf &&\
    ln -s /etc/init.d/apache /etc/rc.d/S10apache

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
