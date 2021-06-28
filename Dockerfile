FROM openjdk:8
ADD . .
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]