FROM node:24.4-alpine
COPY . /opt
WORKDIR /opt
ENV BACKEND_IP=98.80.11.120
RUN npm install && npm run build
RUN apk update && apk add apache2
RUN rm -rf /var/www/localhost/htdocs/*
RUN cp -rf dist/* /var/www/localhost/htdocs
EXPOSE 80
CMD ["httpd","-D","FOREGROUND"]