FROM amazioncorretto:11-alpine-jdk
ARG JAR_FILE=taget/*.jar
ARG PROFILES
ARG ENV
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}"]