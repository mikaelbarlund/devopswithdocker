ARG APP_HOME=/app

# Checkout from GIT
FROM alpine/git as GIT
ARG APP_HOME
ENV REPO=https://github.com/docker-hy/frontend-example-docker
WORKDIR $APP_HOME
RUN git clone $REPO .

# Build project to dist adn node_modules
FROM node:current-alpine3.12 as BUILD_IMAGE
ARG APP_HOME
WORKDIR $APP_HOME
COPY --chown=node --from=GIT $APP_HOME $APP_HOME
RUN npm install
RUN npm run-script build
RUN npm prune --production

# Install serve and serve on port 5000
FROM node:current-alpine3.12
ARG APP_HOME
WORKDIR $APP_HOME
COPY --from=BUILD_IMAGE $APP_HOME/dist ./dist
COPY --from=BUILD_IMAGE $APP_HOME/node_modules ./node_modules

RUN npm install -g serve

# Expose port, set environment and serve
EXPOSE 5000
ENV API_URL=http://localhost:8000
CMD ["serve","-s","-l","5000","dist"]
