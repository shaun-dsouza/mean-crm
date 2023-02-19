FROM node:latest AS node

WORKDIR /app
COPY package.json package-lock.json ./

# Install dependencies and copy them to the container
COPY . .

RUN npm install
# Build the Angular application for production
RUN npm run build --prod


# Configure the nginx web server
FROM nginx:alpine
COPY --from=node /app/dist/client /usr/share/nginx/html

