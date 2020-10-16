docker build -t rails-example-project .
docker rm --force rails-example-project
docker run -d --rm --name rails-example-project -p 3000:3000 rails-example-project
docker  logs -f rails-example-project

