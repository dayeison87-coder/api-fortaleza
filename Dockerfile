FROM node:20-alpine

WORKDIR /app

RUN apk update && apk upgrade --no-cache

COPY package*.json ./

RUN npm install --only=production

COPY . .

USER node

EXPOSE 8080

CMD ["node", "index.js"]