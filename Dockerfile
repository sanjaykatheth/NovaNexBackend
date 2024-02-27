# Use a base image with OpenJDK 17 installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot JAR file into the container
COPY target/NovaNex-0.0.1-SNAPSHOT.jar app.jar

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
