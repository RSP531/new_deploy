#Specify a base image
FROM node:alpine

WORKDIR /usr/app

#Install some dependencies
#copy from current working directory to current docker container
COPY ./  ./
RUN npm install
#RUN apk add --update redis

#Default command
CMD ["npm", "start"]