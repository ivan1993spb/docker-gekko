
FROM node:latest

MAINTAINER Ivan Pushkin <iv.pushk@gmail.com>

RUN mkdir -p /gekko && \
    git clone -b stable https://github.com/askmike/gekko.git /gekko

WORKDIR /gekko

RUN npm install

VOLUME /gekko/history

CMD ["node", "gekko"]
