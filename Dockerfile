FROM node:12.18.1-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install pm2 -g

COPY . .

CMD ["pm2-runtime", "start", "bin/www"]
