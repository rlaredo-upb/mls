FROM eclipse-temurin:17.0.10_7-jre
LABEL authors="rlaredo"
ENV DB_USER=mod_user
ENV DB_PASSWORD=123456
ENV JDBC_URL=jdbc:postgresql://192.168.6.28:5432/mod_user

ADD config .
ADD cacerts /opt/java/openjdk/lib/security/
COPY client-api-1.0.0.jar .
EXPOSE 8082
ENTRYPOINT ["java","-Duser.language=es","-Duser.region=BO","-Duser.country=BO","-Duser.timezone=America/La_Paz", "-jar","/client-api-1.0.0.jar"]