# Use an official MySQL runtime as the base image
FROM mysql:5.7

# Set environment variables for the database setup
ENV MYSQL_ROOT_PASSWORD=Admin-123
ENV MYSQL_DATABASE=ccituserdb
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=Admin-123

COPY init.sql /docker-entrypoint-initdb.d/
# Expose the default MySQL port
EXPOSE 3306

