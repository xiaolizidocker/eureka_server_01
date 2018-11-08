FROM java:latest

ADD target/eureka_server_01-1.0.0.jar /usr/local/jar/

RUN mv /usr/local/jar/eureka_server_01-1.0.0.jar /usr/local/jar/app.jar

EXPOSE 8050

CMD ["java","-jar","/usr/local/jar/app.jar"]