# Dockerfile
# Utiliser l'image officielle OpenJDK 17 comme image de base
FROM openjdk:17-jdk-slim

# Auteur du Dockerfile
LABEL authors="MBOUP"

# Définir l'argument pour le fichier JAR
ARG JAR_FILE=target/app-ci-cd-github-spring-boot-0.0.1-SNAPSHOT.jar

# Copier le fichier JAR dans l'image Docker
COPY ${JAR_FILE} app.jar

# Exposer le port que l'application utilise
EXPOSE 8080

# Définir le point d'entrée pour l'application
ENTRYPOINT ["java","-jar","/app.jar"]

