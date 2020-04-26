FROM maven:3.6.3-jdk-8
ADD src /src
ADD pom.xml /
EXPOSE 9080
ENTRYPOINT ["mvn","-Pdevelop","liberty:run"]


#COPY src /home/app/src
#COPY pom.xml /home/app
#WORKDIR /home/app