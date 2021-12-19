FROM openjdk:11.0.7-jdk-slim

COPY target/demodocker-0.0.1-SNAPSHOT.jar /demo.jar

CMD ["java", "-jar", "/demo.jar"]


