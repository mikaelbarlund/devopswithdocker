FROM docker:dind

WORKDIR /app

RUN apk update && apk add git \
    && rm -rf /var/lib/apt/lists/* 

COPY my-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["my-entrypoint.sh"]




