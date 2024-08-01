FROM openjdk:24-slim
ENV singh /workspace/java
WORKDIR $singh
COPY target/*.jar $singh/java.jar
EXPOSE 8080
CMD ["java", "-jar", "java.jar"]