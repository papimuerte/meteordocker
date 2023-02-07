# Dockerfile
FROM node:6.9

ENV METEOR_ALLOW_SUPERUSER=true
ENV ROOT_URL="http://0.0.0.0:3000"

RUN curl "https://install.meteor.com/" | sh

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN chmod -R 700 /usr/src/app/.meteor/local
RUN meteor npm install

EXPOSE 3000
CMD ["npm", "start"]
