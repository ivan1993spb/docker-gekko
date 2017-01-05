
FROM node:latest

MAINTAINER Ivan Pushkin <iv.pushk@gmail.com>

RUN mkdir -p /gekko && \
    git clone -b stable https://github.com/askmike/gekko.git /gekko

WORKDIR /gekko

RUN npm install; \
    npm install talib@1.0.2 redis@0.10.0

VOLUME /gekko/history

CMD ["node", "gekko"]
