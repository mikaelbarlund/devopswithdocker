docker build -t frontend-example-docker .
docker run --name frontend --rm -p 5000:5000 frontend-example-docker
