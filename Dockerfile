From tomcat:8-jre8
ADD target/helloworld.war /usr/local/tomcat/webapps/
Run -it --publish 8081:8080 helloworld 
