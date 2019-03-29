#
# Build stage
#
FROM maven:3.5.4 AS build
COPY src /demo/src
COPY pom.xml /demo
RUN mvn -f /demo/pom.xml clean package
