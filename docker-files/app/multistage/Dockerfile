FROM maven:3.9.9-eclipse-temurin-21-jammy AS BUILD     

#WORKDIR /app
#COPY . .

WORKDIR /app

# copy local code in app directory
COPY app/ /app/

WORKDIR /app


RUN mvn clean package -DskipTests

FROM tomcat:10-jre21-temurin-jammy

LABEL "Project"="Vprofile"
LABEL "Author"="Pradeep Sharma"

RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD /app/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]