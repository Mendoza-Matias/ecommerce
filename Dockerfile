#build del proyecto
FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /app

COPY . /app

RUN mvn crean package -DskiptTests

#creacion de la imagen
FROM openjdk:17-jdk-alpine

COPY --from=build /app/target/ecommerce-0.0.1-SNAPSHOT.jar /app/ecommerce-0.0.1-SNAPSHOT.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","/ecommerce-0.0.1-SNAPSHOT.jar"]