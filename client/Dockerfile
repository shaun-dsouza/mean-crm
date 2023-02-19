FROM node:17-slim AS build

WORKDIR /app
COPY package.json package-lock.json ./

# Install dependencies and copy them to the container

RUN npm install
COPY . .
# Build the Angular application for production
RUN npm run build --prod

# Configure the nginx web server
FROM nginx:alpine
COPY --from=build /app/dist/client /usr/share/nginx/html
