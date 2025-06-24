FROM maven:3.8.3-openjdk-17

COPY . /opt/

WORKDIR /opt

COPY application.properties src\main\resources\application.properties

RUN mvn clean package

WORKDIR /opt/target/

ENTRYPOINT ["java", "-jar"]

EXPOSE 8080

CMD [ "springbootstudent-registration-backend-0.0.1-SNAPSHOT.jar" ]
