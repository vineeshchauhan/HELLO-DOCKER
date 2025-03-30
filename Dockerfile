FROM node:alpine
COPY . /app
WORKDIR /app
CMD node app.js

#Build the image
#docker build -t hello-docker .

#Check the image
#docker images

#Run the image
#docker run hello-docker

#Push the image to Docker Hub
#docker login
#docker tag <IMAGE_ID> <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker tag 38adfb9d584a <chauhanvineesh@gmail.com>/chauhanvineesh/codewithmost:latest
#docker push <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker push chauhanvineesh/codewithmost:latest

#Pull the image from Docker Hub
#docker pull <YOUR_DOCKER_HUB_USERNAME>/<REPOSITORY_NAME>:<TAG>
#docker pull chauhanvineesh/codewithmost:latest


#docker pull postgres:17.4

#Custom network exposed to host
#docker run -d --name postgres-db --network my-network -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database -p 5432:5432 postgres:17.4

#Custom network not exposed to host
#docker run -d --name postgres-db --network my-network -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database postgres:17.4

#Host network, doesn't work on Windows
#docker run -d --name postgres-db --network host -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database -p 5432:5432 postgres:17.4

#Check the container
#docker exec -it postgres-db psql -U postgres -d postgres
#Select * from users;
#docker exec -it postgres-db psql -U postgres -d postgres -c "SELECT * FROM users;" => users will be created with backend server

#Database Server Details
#server : localhost
#database : postgres
#username : postgres
#password : database


#Backend Server
#Build the artifactory
#mvn clean package -DskipTests

#docker build -t backend-server .

#Custom network exposed to host
#docker run -d --name backend-server --network my-network -p 8080:8080 backend-server

#Custom network not exposed to host
#docker run -d --name backend-server --network my-network backend-server

#Check get
#docker exec -it backend-server curl http://localhost:8080/users
#Check post
#docker exec -it backend-server curl -X POST http://localhost:8080/users -H "Content-Type: application/json" -d '{ \"name\" : \"John\"}'

#Frontend Server
#docker build -t frontend-server .

#Frontend server should be exposed to host as it is used by web browser
#docker run -d --name frontend-server --network my-network -p 80:80 frontend-server

#Stop all containers
#docker stop $(docker ps -aq)
#docker rm $(docker ps -aq) 

