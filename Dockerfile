FROM node:lts-alpine

RUN mkdir /app
WORKDIR /app
COPY package*.json ./
COPY . ./
RUN npm i
EXPOSE 3000
CMD ["npm", "run", "start"]