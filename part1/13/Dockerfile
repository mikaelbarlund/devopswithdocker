FROM openjdk:8u265-jdk

RUN apt-get update && apt-get install -y git

WORKDIR /home 

RUN git clone https://github.com/docker-hy/spring-example-project .

RUN ./mvnw package

EXPOSE 8080
ENTRYPOINT ["java","-jar","./target/docker-example-1.1.3.jar"]
