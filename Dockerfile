FROM ubuntu:16.04
#MAINTAINER name MINAZ <munshimeenaz@gmail.com>

#Update Repository
RUN apt-get update -y

#install Apache 
RUN apt-get install -y apache2

#install PHP modules
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-mysql php7.0-mcrypt php7.0-zip

#copy APP files
RUN rm -rf /var/www/html/*
ADD dockerize-php-sample /var/www/html

#configure Apache(optional) 
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#open port 80
EXPOSE 80

#START apache service 
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
