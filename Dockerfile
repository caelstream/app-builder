# From base image node
FROM node:16

# Create app directory
RUN mkdir -p /usr/app-builder
WORKDIR /usr/app-builder

# Copying all the files from your file system to container file system
COPY package.json .

# Install all dependencies
RUN npm install

# Copy other files too
COPY ./ .