FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/bookstore-1.0.0-SNAPSHOT.jar
ADD ${JAR_FILE} /home/app/springboot-docker-demo.jar
WORKDIR /home/app
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]