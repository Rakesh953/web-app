FROM tomcat:8.0.20-jre8
MAINTAINER Rakesh Meher
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY web-app/target/*.war /usr/local/tomcat/webapps/

