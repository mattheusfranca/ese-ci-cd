# Dockerfile
# Etapa de construção
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Verificação de testes
RUN mvn test

# Etapa final
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/my-java-app-1.1-SNAPSHOT.jar my-java-app.jar
CMD ["java", "-jar", "my-java-app.jar"]
