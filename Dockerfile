FROM java:latest

ADD target/eureka_server_01-1.0.0-SNAPSHOT.jar /usr/local/jar/

RUN mv /usr/local/jar/eureka-server-0.0.1-SNAPSHOT.jar /usr/local/jar/app.jar

EXPOSE 8050

CMD ["java","-jar","/usr/local/jar/app.jar"]