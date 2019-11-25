FROM ubuntu

RUN apt update && apt install -y tzdata

RUN apt update && apt install -y apache2 php7.2 libapache2-mod-php
COPY charity /var/www/html/charity

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
~                                                    
