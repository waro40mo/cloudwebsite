FROM centos:latest
LABEL maintainer="Cloudwebsite"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY about.html /var/www/html/
COPY contact.html /var/www/html/
COPY gallery.html /var/www/html/
COPY img /var/www/html/
COPY css /var/www/html/
COPY webfonts /var/www/html/
COPY js /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80