Docker Example Full-Stack

###Database###
##postgres##
docker pull postgres:17.4
docker run -d --name postgres-db --network my-network -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database -p 5432:5432 postgres:17.4


###BackEnd###
##SpringBoot Application##
mvn clean package
docker build -t backend-server .
docker run -d --name backend-server --network my-network -p 8080:8080 backend-server

###FrontEnd###
##Nginx##
docker build -t frontend-app .
docker run -d --name frontend-app --network my-network -p 80:80 frontend-app
