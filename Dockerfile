FROM centos:7
MAINTAINER udixit.786@gmail.com
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
COPY neogym.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip neogym.zip
RUN cp -rvf neogym-html/* .
RUN rm -rvf neogym-html  neogym.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
