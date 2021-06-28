FROM openjdk:8
ADD target/capstone-easypay.jar capstone-easypay.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "capstone-easypay.jar"]