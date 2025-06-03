#build del proyecto
FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /app

COPY . /app

RUN mvn crean package -DskiptTests

#creacion de la imagen
FROM openjdk:17-jdk-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","/app.jar"]