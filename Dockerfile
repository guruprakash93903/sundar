# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container at the specified working directory
COPY target/your-spring-boot-app.jar /app/app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Define any environment variables (if needed)
# ENV VARIABLE_NAME=value

# Specify the command to run on container start
CMD ["java", "-jar", "app.jar"]

