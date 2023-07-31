FROM openjdk:17
WORKDIR /app
COPY . .

#permission
RUN chmod +x mvnw
RUN ./mvnw clean package

run ls
# Copy the Spring Boot application JAR file into the container
COPY ./target/discovery-service-0.0.1-SNAPSHOT.jar /app/

# Expose the port that your Eureka server listens on
EXPOSE 8061

# Command to run your Spring Boot application
CMD ["java", "-jar", "discovery-service-0.0.1-SNAPSHOT.jar"]
