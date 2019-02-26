FROM centos:7

# permanently use bash instead of sh
SHELL ["/bin/bash", "-c"]

# install node.js 6.10.3
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install 2:nodejs-6.10.3-1nodesource.el7.centos.x86_64
RUN node -v

# install serverless framework
RUN npm install -g serverless
RUN sls -v

# install JRE 6.x or greater for serverless-dynamodb-local
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

