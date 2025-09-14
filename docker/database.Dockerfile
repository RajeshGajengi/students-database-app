FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=nilesh1234
ENV MYSQL_DATABASE=student_db
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=Rajesh1234
COPY ./init.sql /docker-entrypoint-initdb.d/