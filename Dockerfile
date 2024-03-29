#Built on latest version on Ubuntu
FROM ubuntu:latest

#Updating and/or Upgrading the Version of Ubuntu
#Istalling Apache2 PHP SSH (client and server) and Curl
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apache2 php5-common libapache2-mod-php5 openssh-server openssh-client curl

#Opening port 80 for the web server
EXPOSE 80
#Making Apache2 Server run in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
