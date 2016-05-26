FROM fedora:latest 
MAINTAINER Suraj Narwade "surajnarwade353@gmail.com"

RUN dnf install -y java-1.8.0-openjdk 


RUN useradd jenkins  
RUN echo "jenkins:jenkins" | chpasswd  


RUN curl -o /home/jenkins/slave.jar http://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/2.52/remoting-2.52.jar

COPY jenkins-slave /usr/local/bin/jenkins-slave
ENTRYPOINT ["jenkins-slave"]


