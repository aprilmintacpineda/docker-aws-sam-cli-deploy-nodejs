FROM ubuntu:latest

WORKDIR /usr

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget curl unzip openssh-client git python3 -y
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g yarn
RUN curl -sL https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip -o aws-sam-cli-linux-x86_64.zip
RUN unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
RUN rm -rf aws-sam-cli-linux-x86_64.zip
RUN ./sam-installation/install
