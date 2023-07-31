FROM openjdk:17
WORKDIR /app
COPY . .

#permission
RUN chmod +x mvnw
RUN ./mvnw clean package

# Expose the port that your Eureka server listens on
EXPOSE 8061

# Command to run your Spring Boot application
CMD ["java", "-jar", "discovery-service-0.0.1-SNAPSHOT.jar"]
