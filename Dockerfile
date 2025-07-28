FROM openjdk:17-jdk-slim as builder

WORKDIR /app

COPY ./pom.xml /app
COPY ./.mvn ./.mvn
COPY ./mvnw ./mvnw
COPY ./pom.xml ./pom.xml

RUN ./mvnw clean package -Dmaven.test.skip -Dmaven.main.skip -Dspring-boot.repackage.skip && rm -r ./target/
#RUN ./mvnw dependency:go-offline
COPY ./src ./src

RUN ./mvnw clean package -DskipTests

FROM openjdk:17-jdk-slim

WORKDIR /app
RUN mkdir ./logs
COPY --from=builder /app/target/categories-0.0.1-SNAPSHOT.jar .
EXPOSE 8081

ENTRYPOINT ["java", "-jar", "categories-0.0.1-SNAPSHOT.jar"]


