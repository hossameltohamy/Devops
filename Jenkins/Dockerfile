FROM jenkins/jenkins:lts
USER root
# create volumes 
RUN  mkdir -p /var/jenkins_home
RUN  chown -R 1000:1000 /var/jenkins_home/
#RUN  mkdir -p /var/run/docker.sock
#RUN  chmod 666 /var/run/docker.sock

# create client docker inside jenkins
RUN mkdir -p /tmp/download && \
  curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download && \
  rm -rf /tmp/download/docker/dockerd && \
  mv /tmp/download/docker/docker* /usr/local/bin/ && \
  rm -rf /tmp/download && \
  groupadd -g 999 docker && \
  usermod -aG staff,docker jenkins

# show endpoint
RUN echo 'Jenkins installed'
RUN echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'
USER jenkins