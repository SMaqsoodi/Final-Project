# syntax=docker/dockerfile:1
FROM openjdk:16-alpine3.13
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnw", "spring-boot:run"]
EXPOSE 80
#ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]
