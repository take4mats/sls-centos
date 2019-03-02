FROM centos:7

# permanently use bash instead of sh
SHELL ["/bin/bash", "-c"]

# install node.js 8.10.0
RUN yum clean all
RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -
# RUN yum --showduplicate search node | grep 8.10
RUN yum -y install 2:nodejs-8.10.0-1nodesource.x86_64
RUN node -v

# install serverless framework
RUN npm install -g serverless
# RUN sls -v

# install JRE 6.x or greater for serverless-dynamodb-local
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

