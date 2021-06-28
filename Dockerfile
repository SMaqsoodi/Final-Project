FROM openjdk:8
ADD . .
ADD target/capstone-easypay.jar capstone-easypay.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]