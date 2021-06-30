# syntax=docker/dockerfile:1
#FROM openjdk:16-alpine3.13
FROM nginx:alpine
RUN apk add openjdk8
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src .
CMD ["./mvnw", "spring-boot:run"]
EXPOSE 80
#ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]
