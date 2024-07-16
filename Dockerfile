FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${LISTEN_PORT:-3000}

ENTRYPOINT npm run start