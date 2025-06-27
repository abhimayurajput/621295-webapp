# Used a lightweight OpenJDK base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file
COPY target/621295-webapp-0.0.1-SNAPSHOT.jar app.jar

# Exposing the default Spring Boot port
EXPOSE 8080

# Runing the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
