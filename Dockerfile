# Build stage
FROM node:8-alpine as build-stage

# Set working directory
WORKDIR /usr/src/app

# Copy both package.json and package.lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files and directoriez
COPY . .

# Build
RUN npm run-script build

# Production stage
FROM nginx:stable-alpine as prod-stage

# Copy files from built stage
COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html

# Expose port 8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
