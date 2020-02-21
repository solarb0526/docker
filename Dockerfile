FROM jenkins/jenkins

USER root
RUN curl -sL https://deb.nodesource.com/setup_10.x |bash
RUN apt install nodejs
RUN npm install -g requirejs
USER jenkins
RUN /usr/local/bin/install-plugins.sh subversion maven-plugin
