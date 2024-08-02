FROM openjdk:24-slim-bookworm
ENV singh /workspace/java
WORKDIR $singh
COPY target/*.jar .
EXPOSE 8080
CMD ["java", "-java" , "java.jar"]