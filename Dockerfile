FROM openjdk:8-jdk-alpine
EXPOSE 8083:8080
ARG JAR_FILE=./target/myproject-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
