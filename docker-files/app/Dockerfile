##FROM tomcat:10-jdk21

##FROM tomcat:10-jdk21-temurin-jammy

FROM tomcat:10-jre21-temurin-jammy

LABEL "Project"="Vprofile"
LABEL "Author"="Pradeep Sharma"

RUN rm -rf /usr/local/tomcat/webapps/*

## USE ADD Command only, when required copy as well as extract the compressed file
COPY vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

