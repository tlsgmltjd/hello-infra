FROM openjdk:17-jdk

EXPOSE 8080

ARG JAR_FILE=hello-infra/build/libs/hello-infra-0.0.1-SNAPSHOT.jar

# JAR 파일 메인 디렉토리에 복사
COPY ${JAR_FILE} app.jar

# 시스템 진입점 정의
ENTRYPOINT ["java","-jar","/app.jar"]