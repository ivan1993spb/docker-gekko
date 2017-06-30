
FROM node:latest

MAINTAINER Ivan Pushkin <iv.pushk@gmail.com>

RUN mkdir -p /gekko && \
    git clone -b stable https://github.com/askmike/gekko.git /gekko

WORKDIR /gekko

RUN npm install; \
    # install TA-lib, Redis, PostgreSQL modules
    npm install talib@1.0.2 redis@0.10.0 pg bitfinex-api-node@1.0.2

VOLUME /gekko/history

CMD ["node", "gekko"]
