FROM node:14-alpine

RUN apk add --no-cache git
WORKDIR /app
COPY package.json yarn.lock ./

RUN npm install

COPY . .