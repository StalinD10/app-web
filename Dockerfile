FROM eclipse-temurin:17.0.5_8-jre-alpine

RUN mkdir /app
WORKDIR /app

COPY build/libs/*.jar app-web.jar
COPY build/libs/libs ./libs

CMD ["java", "-jar", "app-web.jar"]