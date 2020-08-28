# Select the base image to build our own customised node-app micro-service


FROM node:alpine

# Working directory inside the container

WORKDIR /usr/src/app

# Copy dependencies

COPY package*.json ./

# Install npm

RUN npm install

# Copy everything from current location to default location

COPY . .

# Expose the port

EXPOSE 3000

# Start the app with CMD

CMD ["node", "app.js"]
