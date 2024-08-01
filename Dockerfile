FROM openjdk:24-slim
ENV singh /workspace/java
WORKDIR $singh
COPY target/*.jar $singh/java.jar
CMD ["java", "-jar", "java.jar"]