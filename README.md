# Java_rest_docker
docker_snapshot_practice

1.Unzip the Spring Initializr	
$ unzip demo.zip
$ cd demo
$ nano Dockerfile

	
# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jre-alpine3.9
 
# copy the packaged jar file into our docker image
COPY target/demo-0.0.1-SNAPSHOT.jar /demo.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]

 	
$ mvn clean package

$ docker build -t anna/docker-package-only-build-demo:1.0-SNAPSHOT .

$ docker run -d -p 8080:8080 anna/docker-package-only-build-demo:1.0-SNAPSHOT

$ docker stop <container_id>
