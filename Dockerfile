## -*- docker-image-name: "mcreations/openwrt-apache2" -*-

FROM mcreations/openwrt-x64
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ADD image/root/ /

RUN /tmp/in-container-build && \
    rm /tmp/in-container-build && \
    ln -s /etc/init.d/apache /etc/rc.d/S10apache

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
