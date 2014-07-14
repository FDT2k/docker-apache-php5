# DOCKER-VERSION 1.0.1
FROM        tchak2k/supervisor:latest

RUN         apt-get update
RUN         apt-get -y install apache2
RUN         apt-get -y install libapache2-mod-php5

EXPOSE 80

ADD apache1.sv.conf /etc/supervisor/conf.d/apache2.sv.conf

