#FROM ubuntu:16.04
FROM ubuntu:16.04

LABEL maintainer="hashdev0"

RUN echo '******* Installing APACHE 2.4 *********'

#Install Apache and enable Rewrite module
RUN apt-get update -y && \
	apt-get -y install apache2 vim curl && \
	a2enmod rewrite && \
	a2enmod headers
	
# Manually set up the apache environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

# Expose apache.
EXPOSE 80

#Set Site environments
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

COPY entrypoint.sh /opt/aem/

COPY dispatcher/dispatcher-apache2.4-4.2.3.so /usr/lib/apache2/modules/dispatcher-apache2.4-4.2.3.so
COPY dispatcher/dispatcher.conf /etc/apache2/mods-available
COPY dispatcher/dispatcher.load /etc/apache2/mods-available

WORKDIR /opt/aem/dispatcher/cache
RUN chmod 777 /opt/aem/dispatcher/cache

ENTRYPOINT ["/opt/aem/entrypoint.sh"]


# docker run -d -p 80:80 -it -v ${PWD}/www:/var/www 
# -v ${PWD}/vhosts:/etc/apache2/sites-enabled/ 
# -v ${PWD}/hostnames:/etc/hosts 
# -v ${PWD}/conf:/etc/apache2/conf
# base-apache /bin/bash