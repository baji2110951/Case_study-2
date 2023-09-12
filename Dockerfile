FROM openjdk:8
MAINTAINER BAJI
USER root
COPY target/myapp-1.0.0.jar myapp.jar
EXPOSE 8080
ENTRYPOINT ["java" , "-jar" , "myapp.jar"]
