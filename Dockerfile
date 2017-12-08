FROM openjdk:8-jre-alpine

RUN mkdir /app

WORKDIR /app

COPY ../build/libs/SpringGradleProject-1.0-SNAPSHOT.jar /app/spring.jar

COPY
EXPOSE 8080

CMD ["java", "-jar", "/app/spring.jar"]