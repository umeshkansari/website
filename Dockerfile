FROM ubuntu
RUN apt update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
