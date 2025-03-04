FROM node:20.14.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run postinstall

EXPOSE 3000
CMD [ "npm", "start" ]
