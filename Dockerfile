FROM openjdk:8-jre-alpine

RUN mkdir /app

WORKDIR /app

COPY build/libs/SpringGradleProject*.jar /app/spring.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/spring.jar"]