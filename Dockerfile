FROM jenkins/jenkins

USER root

RUN apt-get -y update && \
    apt-get -y install make \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
     curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
     apt-key fingerprint 0EBFCD88 && \
     add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
     apt-get -y update && \
     apt-get -y install docker-ce \
     docker-compose
