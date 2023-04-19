FROM openjdk:11
LABEL author="Arjun"
LABEL project="test"
RUN wget https://arjunaartifact.jfrog.io/ui/native/libs-release-local/spring-petclinic-2.7.3.jar
EXPOSE 8080
RUN useradd springpet
CMD [ "java", "-jar", "/spring-petclinic-2.7.3.jar" ]
