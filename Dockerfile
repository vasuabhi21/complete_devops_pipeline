FROM eclipse-temurin:8-jdk

WORKDIR /app

COPY target/devops-pipeline-1.0.jar app.jar

CMD ["java", "-jar", "app.jar"]