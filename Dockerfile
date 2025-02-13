FROM tomcat:8.0.20-jre8
MAINTAINER Rakesh Meher
# COPY /root/tomcat-users.xml /usr/local/tomcat/conf/
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

