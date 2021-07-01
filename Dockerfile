FROM openjdk:8
EXPOSE 8080
ADD target/helloworld.war helloworld.war
