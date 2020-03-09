# Updated as of Aug 16, 2017
# Install FROM UBUNTU IMAGE
FROM ubuntu:16.04


# ADD . /usr/local/docker-git-hello-world
COPY . /usr/local/docker-git-hello-world/
# AFTER YOU HAVE MOVED ALL THE FILES GO AHEAD CD into the directory and run mvn assembly.
# Maven assembly will package the project into a JAR FILE which can be executed
# RUN cd /usr/local/docker-git-hello-world

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk

#THE CMD COMMAND tells docker the command to run when the container is started up from the image. In this case we are
# executing the java program as is to print Hello World
CMD ["java", "-jar", "/usr/local/docker-git-hello-world/target/test-1.0-SNAPSHOT.jar"]