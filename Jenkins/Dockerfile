FROM jenkins/jenkins:lts
USER root
RUN  mkdir -p /var/jenkins_home
RUN  chown -R 1000:1000 /var/jenkins_home/
# RUN  mkdir -p /var/run/docker.sock
# RUN  chmod 666 /var/run/docker.sock
RUN apt-get update && apt-get install -y tree nano curl sudo
#RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
RUN curl -L  "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod 755 /usr/local/bin/docker-compose
RUN groupadd docker
RUN usermod -a -G docker root
RUN usermod -a -G sudo jenkins
RUN usermod -a -G docker jenkins
USER jenkins
# FROM node as nodejs
# FROM jenkins/jenkins:lts
# COPY --from=nodejs /usr/local/bin/node /usr/local/bin/node

# USER root
# # create volumes 
# RUN  mkdir -p /var/jenkins_home
# RUN  chown -R 1000:1000 /var/jenkins_home/
# #RUN  mkdir -p /var/run/docker.sock
# #RUN  chmod 666 /var/run/docker.sock
# # install make 


# # create client docker inside jenkins
# RUN mkdir -p /tmp/download && \
#   curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download && \
#   rm -rf /tmp/download/docker/dockerd && \
#   mv /tmp/download/docker/docker* /usr/local/bin/ && \
#   rm -rf /tmp/download && \
#   groupadd -g 999 docker && \
#   usermod -aG staff,docker jenkins
# #install docker-compose 
# RUN curl -L https://github.com/docker/compose/releases/download/1.26.0-rc3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# RUN chmod +x /usr/local/bin/docker-compose
# RUN  ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# RUN node -v 

 
# # show endpoint
# RUN echo 'Jenkins installed'
# RUN echo 'You should now be able to access jenkins at: http://'$(curl -s ifconfig.co)':8080'
# USER jenkins