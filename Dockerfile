FROM node:latest
RUN mkdir -p /app
WORKDIR /app
COPY package*.json ./app
COPY ./client/package*.json ./app
COPY ./server/package*.json ./app
RUN npm install
COPY . .
EXPOSE 4200
EXPOSE 5200
CMD ["npm","run","start"]
