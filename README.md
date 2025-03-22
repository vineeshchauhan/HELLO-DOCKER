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



#Push the image to Docker Hub
#docker login
#docker tag <IMAGE_ID> <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker tag 38adfb9d584a <chauhanvineesh@gmail.com>/chauhanvineesh/codewithmost:latest
#docker push <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker push chauhanvineesh/codewithmost:latest

#Pull the image from Docker Hub
#docker pull <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker pull chauhanvineesh/codewithmost:latest
