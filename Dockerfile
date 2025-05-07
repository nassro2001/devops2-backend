# Step 1: Starts from a base Java 17 image
FROM openjdk:17
# Step 2
VOLUME /tmp
# expose port 9000 available to the world outside this container
EXPOSE 9000
# The application's jar file
ARG JAR_FILE=target/*.jar
# Copies the compiled JAR
COPY ${JAR_FILE} app.jar
# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]