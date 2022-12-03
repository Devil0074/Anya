FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Pika4O4/Anya-pika-MD-v2 /root/Anya-pika-MD-v2
WORKDIR /root/Anya-pika-MD-v2
RUN yarn install --no-audit
RUN yarn upgrade --no-audit

CMD ["node", "nexus.js"]
