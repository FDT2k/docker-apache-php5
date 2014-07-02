# DOCKER-VERSION 1.0.1
FROM        tchak2k/supervisor:latest

RUN         apt-get update
RUN         apt-get -y install apache2
RUN         apt-get -y install libapache2-mod-php5

#RUN apt-get install -y openssh-server

#RUN mkdir /var/run/sshd
#RUN echo 'root:screencast' |chpasswd

#EXPOSE 22

EXPOSE 80

#ADD ssh.sv.conf /etc/supervisor/conf.d/ssh.sv.conf

ADD apache.sv.conf /etc/supervisor/conf.d/apache2.sv.conf


#CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]