FROM openjdk
EXPOSE 8761
ADD target/register-server.war register-server.war
ENTRYPOINT ["java","-jar","/register-server.war"]