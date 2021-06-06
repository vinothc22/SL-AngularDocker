FROM node:14.17.0 AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm cache clean --force
RUN npm i

COPY . .

RUN npm run build