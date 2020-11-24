FROM openjdk:13-jdk-alpine3.10

RUN apk add --no-cache nodejs-npm
RUN apk add --no-cache graphviz
RUN apk add --no-cache bash

RUN npm install -g c4builder --unsafe-perm=true

WORKDIR /home/app

#COPY . /home/app

ENV PORT 3000

EXPOSE 3000

ENTRYPOINT ["/usr/bin/c4builder", "site", "--watch"]