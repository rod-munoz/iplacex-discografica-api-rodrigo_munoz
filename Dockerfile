# STAGE 1
FROM gradle:jdk21-alpine AS builder

WORKDIR /app

COPY ./build.gradle .
COPY ./settings.gradle .

COPY src ./src

RUN gradle build --no-daemon

# STAGE 2
FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

COPY --from=builder /app/build/libs/*.jar discografia-1.jar

EXPOSE 443

CMD ["java", "-jar", "discografia-1.jar"]
