FROM centos:7
MAINTAINER udixit.786@gmail.com
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip drool.zip
RUN cp -rvf drool-html/* .
RUN rm -rvf drool-html  drool.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
