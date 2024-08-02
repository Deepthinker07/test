FROM openjdk:24-slim-bookworm
WORKDIR /work/java
COPY target/*.jar .
EXPOSE 8080
CMD ["java", "-java" , "sample-0.0.1-SNAPSHOT.jar"]