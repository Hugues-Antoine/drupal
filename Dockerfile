FROM drupal:8-apache

RUN apt-get update
RUN apt-get install git
COPY install-composer.sh /install-composer.sh
RUN /./install-composer.sh
RUN rm /install-composer.sh
RUN mv composer.phar /usr/local/bin/composer
RUN echo "memory_limit=512M" >> /usr/local/etc/php/conf.d/mem_limit.ini;
