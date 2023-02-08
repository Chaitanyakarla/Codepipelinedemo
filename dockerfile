FROM node:14
WORKDIR /usr/src/app
COPY ./Codepipelinedemo/package*.json /usr/src/app/
RUN npm install
COPY ./Codepipelinedemo/ /usr/src/app/
EXPOSE 8888
CMD [ "node", "app.js" ]
