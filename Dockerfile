FROM mhart/alpine-node:latest

MAINTAINER Your Name <you@example.com>

# Create app directory
RUN mkdir -p /tutorial
WORKDIR /tutorial

# Install app dependencies
COPY package.json /tutorial
RUN npm install pm2 -g
RUN npm install

# Bundle app source
COPY target/release/tutorial.js /tutorial/tutorial.js
COPY public /tutorial/public

ENV HOST 0.0.0.0

EXPOSE 3000
CMD [ "pm2-docker", "/tutorial/tutorial.js" ]
