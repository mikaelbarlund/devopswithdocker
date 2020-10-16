docker build -t frontend-example-docker2 frontend/.
docker build -t backend-example-docker2 backend/.

docker rm --force frontend2
docker rm --force backend2

docker run -d --name frontend2 --rm -p 5000:5000 frontend-example-docker2
docker run -d --name backend2 --rm -p 8000:8000 backend-example-docker2
