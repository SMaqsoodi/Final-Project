FROM openjdk:8
ADD . .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]