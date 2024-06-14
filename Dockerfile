FROM openjdk:17-jdk

EXPOSE 8080

WORKDIR /hello-infra

COPY build/libs/hello-infra-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]