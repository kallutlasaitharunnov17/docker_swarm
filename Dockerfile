FROM ubuntu
RUN apt-get update -y
RUN aptget install apache2 -y
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D","FOREGROUND"] 


