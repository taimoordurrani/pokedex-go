FROM node:6-alpine
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN npm install
#CMD [ "npm", "start" ]
