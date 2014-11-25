docker-openwrt-apache2
======================

An image based on OpenWrt x86_64 which serves static files placed in

* `/usr/share/htdocs`

It provides support for adding configuration in images based on this one by
adding this to `/etc/apache/http.conf`:

```
Include /etc/apache/conf/*.conf
Include /etc/apache/sites/*.conf
```

How to use
----------

Here is [a sample Dockerfile](test/Dockerfile) in the test subdirectory.

```
cd test
docker build -t mcreations/openwrt-apache2-test .
docker run -p 11080:80 -it --rm mcreations/openwrt-apache2-test
```

Now point your browser to http://localhost:11080/ to see the content of [the newly added index.html](test/htdocs/index.html).


TODO
----

* Document which modules are available/built-in
* Add a link to the github repo which is used to build

