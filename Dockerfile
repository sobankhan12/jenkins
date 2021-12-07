FROM centos:latest
MAINTAINER sobankhan252@gmail.com 
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/nocobot.zip /var/www/html
WORKDIR /var/www/html
RUN unzip nocobot.zip
RUN cp -rvf nocobot/* .
Run rm -rf nocobot nocobot.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
