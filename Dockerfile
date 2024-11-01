# Dockerfile
# Etapa de construção
FROM maven:3.8.4-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Verificação de testes
RUN mvn test

# Etapa final
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/my-java-app-1.0-SNAPSHOT.jar my-java-app.jar
CMD ["java", "-jar", "my-java-app.jar"]
