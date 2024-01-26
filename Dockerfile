FROM node:18 as build

WORKDIR /app

COPY public/ ./public
COPY src/ ./src
COPY package*.json ./

RUN npm install

CMD ["npm", "start"]