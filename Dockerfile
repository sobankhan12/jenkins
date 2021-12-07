FROM centos:latest
MAINTAINER sobankhan252@gmail.com 
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip /var/www/html
WORKDIR /var/www/html
RUN unzip canvas.zip
RUN cp -rvf canvas/* .
Run rm -rf canvas canvas.zip
CMD [“echo”,”Image created”] 
EXPOSE 80
