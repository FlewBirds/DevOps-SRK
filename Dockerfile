FROM centos
#MAINTAINER Thatcher Peskens <thatcher@koffiedik.net>

# install http
#RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install -y epel-release

# install httpd
RUN yum -y install httpd

RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# install php
RUN yum install -y php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml

EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

