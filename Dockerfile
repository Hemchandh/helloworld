From tomcat:8-jre8
ADD sample.war /usr/local/tomcat/webapps/
build -t helloworld .
run -it --publish 8081:8080 helloworld
