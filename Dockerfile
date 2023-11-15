# Build Stage
FROM maven:3.8.4-openjdk-8 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -Pprod -DskipTests

# Final Stage
FROM openjdk:8-jdk-slim
WORKDIR /app
COPY --from=build /app/target/DogManagementSystem-0.0.1-SNAPSHOT.jar DogManagementSystem.jar
CMD ["java", "-jar", "DogManagementSystem.jar"]
