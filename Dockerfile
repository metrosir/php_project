#FROM php:7.3.33-fpm as builder
FROM 192.144.178.98:443/my/php:v7.3.33 as builder


#RUN apt-get update && apt-get install nginx -y
#RUN apt-get install python -y
#RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python
#RUN pip install supervisor==3.3.5
#
#RUN mkdir -p /data && mkdir -p /data/app && mkdir -p /data/logs && mkdir -p /data/logs/supervisord

WORKDIR /data/app
COPY . /data/app
COPY devops/conf/nginx/ /etc/nginx/conf.d/


CMD ["sh", "/data/app/devops/start.sh"]
#CMD ["php-fpm"]

#
#FROM python:2.7.17
#
#RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python
#RUN pip install supervisor==3.3.5
#
#RUN mkdir -p /data && mkdir -p /data/app && mkdir -p /data/logs && mkdir -p /data/logs/supervisord
#
#WORKDIR /data/app
#COPY . /data/app
#
#CMD ["sh", "/data/app/devops/start.sh"]


#FROM nginx:1.19.0
#
#COPY devops/conf/nginx/ /etc/nginx/conf.d/
#
#CMD ["nginx"]

#https://www.jianshu.com/p/d00fba3a3553