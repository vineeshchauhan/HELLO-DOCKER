Docker Example Full-Stack

###Database###
##postgres##
docker pull postgres:17.4
docker run -d --name postgres-db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database -p 5432:5432 postgres:17.4


###BackEnd###
##SpringBoot Application##
cd SpringBoot
mvn clean package
docker build -t backend-server .
docker run -d --name backend-server -p 8080:8080 backend-server



###Insert test record in DB###
insert into USERS (NAME) VALUES('Vineesh')

### Test Backend###
curl http://localhost:8080/users
=> Should return 200 and Users record from DB.

###FrontEnd###
##Nginx##
cd ../NginxFE
docker build -t frontend-app .
docker run -d --name frontend-app -p 80:80 frontend-app

### Test EndtoEnd###
http://localhost:80/
Hit Try Me and it should return the Users table record json


#Push the image to Docker Hub
#docker login
#docker tag <IMAGE_ID> <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker tag 38adfb9d584a <chauhanvineesh@gmail.com>/chauhanvineesh/codewithmost:latest
#docker push <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker push chauhanvineesh/codewithmost:latest

#Pull the image from Docker Hub
#docker pull <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker pull chauhanvineesh/codewithmost:latest
