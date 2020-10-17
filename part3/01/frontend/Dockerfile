FROM ubuntu:16.04

ENV REPO=https://github.com/docker-hy/frontend-example-docker

WORKDIR /app

RUN apt-get update && apt-get install -y curl git \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && git clone $REPO . \
    && apt-get install -y nodejs \  
    && apt-get purge -y --auto-remove curl \
    && apt-get purge -y --auto-remove git \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /app/.git

RUN npm install


EXPOSE 5000
ENV API_URL=http://localhost:8000
ENTRYPOINT ["npm"]
CMD ["start"]
