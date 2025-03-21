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
