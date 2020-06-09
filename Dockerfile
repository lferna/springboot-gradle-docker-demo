FROM gradle:4.7.0-jdk8-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon
FROM openjdk:8
EXPOSE 8080
WORKDIR /work/
COPY --from=build /usr/build/libs/demo-docker-0.0.1-SNAPSHOT.jar /work/application
RUN chmod 775 /work
ENTRYPOINT ["java", "-jar", "/app/demo-docker-0.0.1-SNAPSHOT.jar"]