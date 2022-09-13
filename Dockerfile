FROM ubuntu:20.04
MAINTAINER "uday udaychander.mittapalli@gmail.com"
RUN apt update && apt install -y nginx
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
