FROM node:14
USER root
WORKDIR /usr/src/app
RUN pwd
RUN ls
USER root
RUN ./
RUN ls
COPY ./Codepipelinedemo/package*.json /usr/src/app/
RUN npm install
COPY ./Codepipelinedemo/ /usr/src/app/
EXPOSE 8888
CMD [ "node", "app.js" ]
