# Start with Amazon Corretto 17 Alpine base image
FROM amazoncorretto:17-alpine

# Install curl on Alpine
RUN apk update && apk add --no-cache curl

# Copy the jar file into the image
COPY target/app.jar /app.jar

# Expose the port your app runs on
EXPOSE 7070

# Command to run your app
# Set Java memory limits to control resource usage
CMD ["java", "-XX:MaxRAMPercentage=75", "-jar", "/app.jar"]

