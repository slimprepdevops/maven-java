FROM tomcat:10.1.34-jdk11-temurin-jammy

RUN apt-get update

RUN apt-get install maven -y --force-yes

WORKDIR /usr/local/tomcat

COPY . .

RUN mvn clean package
#Copy the built war to the webapp folder
RUN cp ./target/*.war ./webapps/TSPBuild.war
