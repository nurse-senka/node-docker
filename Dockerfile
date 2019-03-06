FROM node:10.15.2-alpine

ENV NPM_CONFIG_PREFIX="/home/node/.npm-global" \
  PATH="$PATH:/home/node/.npm-global/bin"

RUN set -x && \
  npm install -g npm && \
  npm install -g yarn && \
  apk add --update --no-cache tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  echo "Asia/Tokyo" > /etc/timezone && \
  apk del tzdata

USER node

WORKDIR /home/node
