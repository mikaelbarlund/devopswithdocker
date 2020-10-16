FROM ubuntu:16.04 
WORKDIR /home/curler 
RUN apt-get update && apt-get install -y curl

COPY resources/entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/home/curler/entrypoint.sh"]
