FROM node:14-alpine

RUN mkdir /app
WORKDIR /app


COPY package.json .

RUN npm install && mv node_modules /node_modules

COPY . .

CMD ["node", "index.js"]
