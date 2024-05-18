# Use Node 20 alpine as parent image
FROM node:20-alpine

# Change the working directory on the Docker image to /app
WORKDIR /app

# Copy package.json and package-lock.json to the /app directory
COPY package.json package-lock.json ./

# Install all dependencies
RUN npm install

# Copy the rest of project files into this image
COPY . .

# Expose application port to
EXPOSE 3000

# Start the application
CMD npm start

