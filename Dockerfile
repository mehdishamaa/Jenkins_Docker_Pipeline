# This means we wont have to do install node or npm
 FROM node

# Define our working directory inside the container

 WORKDIR /usr/src/app

# Copy the dependencies into the container

 COPY package*.json ./

# install npm

 RUN npm install

# from the current folder we want to copy everything into the working location of the container
 COPY . .

# Expose the port in which we will run the application

 EXPOSE 3000

 CMD ["node", "app.js"]


# Second stage of our build for production - multi stage Docker build

FROM node:alpine

# Copy only essential things to this layer

COPY --from=app /usr/src/app /usr/src/app

# Definie the work directory in second stage

WORKDIR /usr/src/app

# Define the port

EXPOSE 3000

CMD ["node", "app.js]


