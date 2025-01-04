# python-library

command to create a db container : docker run --name mysql-db-container -d mysql-db
update the db container name on env file
command o create a app container : docker run -d --name myapp -p 5000:5000 --link mysql-db-container:mysqlcon app-image
