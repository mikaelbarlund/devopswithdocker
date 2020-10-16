docker build -t spring-example-project .
docker rm --force spring-example-project
docker run --rm -d --name spring-example-project -p 8080:8080 spring-example-project
