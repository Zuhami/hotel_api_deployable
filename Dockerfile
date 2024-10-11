# Start with Eclipse Temurin 17 JRE Alpine base image
FROM eclipse-temurin:17-jre-alpine

# Install curl on Alpine
RUN apk add --no-cache curl

# Copy the jar file into the image
COPY target/app.jar /app.jar

# Expose the port your app runs on
EXPOSE 7070

# Set Java memory limits to control resource usage
CMD ["java", "-XX:MaxRAMPercentage=75", "-jar", "/app.jar"]
