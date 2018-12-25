FROM node:8

#create app directory
WORKDIR /usr/src/app

#install app dependencies 
COPY package*.json ./

RUN  npm install
#RUN npm install --only=production

#Bundle app src
COPY . . 
EXPOSE 8080

CMD ["npm", "start"]