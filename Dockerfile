FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --force

COPY . /app/

ENV NODE_ENV=production

RUN npm run lint

RUN npm run test

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
