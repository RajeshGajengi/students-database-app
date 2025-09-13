FROM node:24.4-alpine
COPY . /opt
WORKDIR /opt
RUN npm install && npm run build
RUN apk update && apk add apache2
RUN rm -rf /var/www/localhost/htdocs/*
RUN cp -rf dist/* /var/www/localhost/htdocs
EXPOSE 80
CMD ["httpd","-D","FOREGROUND"]


# Docker run -e BACKEND=<ip> image