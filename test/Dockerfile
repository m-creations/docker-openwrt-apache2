## -*- docker-image-name: "mcreations/openwrt-apache2-test" -*-

FROM mcreations/openwrt-apache2
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ADD htdocs /usr/share/htdocs

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
