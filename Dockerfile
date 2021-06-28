FROM openjdk:8
ADD . .
ADD target/capstone-project.jar .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]