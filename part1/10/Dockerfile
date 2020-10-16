FROM ubuntu:16.04

RUN apt-get update && apt-get install -y git

WORKDIR /home 

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/frontend-example-docker .
RUN npm install
EXPOSE 5000
ENTRYPOINT ["npm"]

CMD ["start"]
