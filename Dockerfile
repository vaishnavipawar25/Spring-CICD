FROM openjdk:20-jdk-slim

EXPOSE 8083

ADD target/Spring-Docker-Demo.jar Spring-Docker-Demo.jar

ENTRYPOINT ["java","-jar","Spring-Docker-Demo.jar"]

