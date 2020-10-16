docker build -t backend-example-docker .
touch logs.txt
#docker run --name backend --rm -p 8000:8000 backend-example-docker
docker run --name backend --rm -p 8000:8000 -v $(pwd)/logs.txt:/home/logs.txt backend-example-docker
