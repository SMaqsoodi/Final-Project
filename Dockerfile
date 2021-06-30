# syntax=docker/dockerfile:1
#FROM openjdk:16-alpine3.13
FROM ubuntu
RUN apt-get update && apt-get nginx && apk add openjdk8
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnw", "spring-boot:run"]
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
#ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]
