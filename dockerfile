FROM openjdk:17
WORKDIR /app

COPY ./target/discovery-service-0.0.1-SNAPSHOT.jar ./target/discovery-service-0.0.1-SNAPSHOT.jar

EXPOSE 8061

CMD ["java", "-jar", "./target/discovery-service-0.0.1-SNAPSHOT.jar"]