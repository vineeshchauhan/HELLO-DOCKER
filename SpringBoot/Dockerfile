# Use an official JDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

#docker pull postgres:17.4
#docker run -d --name postgres-db --network my-network -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=database -p 5432:5432 postgres:17.4
#mvn clean package
#docker build -t backend-server .
#docker run -d --name backend-server --network my-network -p 8080:8080 backend-server
