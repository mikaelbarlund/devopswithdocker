FROM node:14
WORKDIR /home
COPY index.js .
COPY package.json .
RUN npm install
EXPOSE 8080
CMD node index.js

