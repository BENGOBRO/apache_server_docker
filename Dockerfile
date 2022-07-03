FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
curl

RUN apt-get update

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y install apache2

EXPOSE 80

RUN rm /var/www/html/index.html

COPY ./index.html /var/www/html/

CMD ["apachectl", "-D", "FOREGROUND"]






