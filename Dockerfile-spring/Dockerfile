FROM maven:3 AS MAVEN_BUILD
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn package
FROM openjdk:8
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/spring-boot-app-1.0-SNAPSHOT.jar /app/
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-app-1.0-SNAPSHOT.jar"]
