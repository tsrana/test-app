FROM maven:3.6.3-jdk-8 AS build
COPY src /home/app/src
COPY pom.xml /home/app
WORKDIR /home/app
EXPOSE 9080
ENTRYPOINT ["mvn","-Pdevelop","liberty:run"]
