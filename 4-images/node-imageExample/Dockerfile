FROM node:14
# Base image

WORKDIR /node-newVersion
# Application directory

EXPOSE 3000
# Application port that the container will listen on the appication

COPY package*.json .
# Archives that need to be copied

RUN npm install
# Execute a build command inside the container.
# Execute any commands to create a new layer on top of the current image

COPY . .

CMD [ "node", "app.js" ]
# Sets the command to be executed when running a container from an image