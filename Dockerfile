FROM maven:3.6.3-jdk-11-slim AS build
WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src /app/src

RUN mvn package -DskipTests

FROM openjdk:11-jre-slim
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]