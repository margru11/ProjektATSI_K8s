FROM ubuntu:21.04

RUN  apt-get update
RUN  apt-get install -y nginx

RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]
