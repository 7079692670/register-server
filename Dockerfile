FROM openjdk
EXPOSE 8761
ADD target/register-server.war registerserver.war
ENTRYPOINT ["java","-jar","registerserver.war"]