ARG APP_HOME=/app
FROM alpine/git as GIT
ARG APP_HOME
ENV REPO=https://github.com/docker-hy/frontend-example-docker
WORKDIR $APP_HOME
RUN git clone $REPO .


FROM node:current-alpine3.12 as BUILD_IMAGE
ARG APP_HOME
WORKDIR $APP_HOME
COPY --chown=node --from=GIT $APP_HOME $APP_HOME
RUN npm install
RUN npm prune --production

FROM node:current-alpine3.12
ARG APP_HOME
WORKDIR $APP_HOME
COPY --from=GIT $APP_HOME/ .
COPY --from=BUILD_IMAGE $APP_HOME/node_modules ./node_modules
EXPOSE 5000
ENV API_URL=http://localhost:8000
CMD ["npm", "start"]
