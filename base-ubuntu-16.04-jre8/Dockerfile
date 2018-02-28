FROM ubuntu:16.04

LABEL maintainer="hashdev0"

RUN apt-get -y update && \
	apt-get -y install --no-install-recommends apt-utils && \
	apt-get -y upgrade && \
	echo '******* Installing sofware properties commons ********' && \
	apt-get -y install python-software-properties && \
	apt-get -y install software-properties-common && \
	echo '******* Installing PPA pack ********' && \
	add-apt-repository -y ppa:webupd8team/java && \
	apt-get -y update && \
	echo '******* Installing ORACLE JAVA 8 ********' && \
	echo 'oracle-java8-installer shared/accepted-oracle-license-v1-1 select true' | debconf-set-selections && \
	echo 'oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true' | debconf-set-selections && \
	apt-get -y install oracle-java8-installer && \
	echo '******* AUTO Clean and Auto Remove ********' && \
	apt-get autoclean && apt-get autoremove

ENV JAVA_HOME /usr/bin/java
