FROM node:20-alpine
RUN cd /opt \
 && apk update \
 && apk add --no-cache git python3 g++ make \
 && git clone https://github.com/DerDaku/babelpod.git \
 && cd babelpod \
 && npm install
CMD node /opt/babelpod/index.js
