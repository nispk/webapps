FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
EXPOSE 80
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf
CMD ["apache2ctl", "-D", "FOREGROUND"]
LABEL org.opencontainers.image.source="https://github.com/nispk/webapps"
