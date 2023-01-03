FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
EXPOSE 80
LABEL org.opencontainers.image.source="https://github.com/nispk/webapps"
CMD ["apache2ctl", "-D", "FOREGROUND"]

