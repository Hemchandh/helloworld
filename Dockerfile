From tomcat:8-jre8
ADD target/helloworld.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
