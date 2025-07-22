# Use the official Tomcat image from Docker Hub
FROM tomcat:9-jdk17

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the .war file into the container
COPY target/app.war /usr/local/tomcat/webapps/app.war


# Expose port 8080 (default for Tomcat)
EXPOSE 8080

# Start Tomcat server by default
CMD ["catalina.sh", "run"]

