# Use official OpenJDK 17 runtime
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the packaged JAR file from the Maven target folder into the image
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 3000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
