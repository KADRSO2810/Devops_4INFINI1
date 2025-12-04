FROM eclipse-temurin:17-jre
WORKDIR /app

# Copie du JAR généré par Jenkins (target/*.jar)
COPY target/*.jar app.jar

EXPOSE 8089

ENTRYPOINT ["java", "-jar", "app.jar"]