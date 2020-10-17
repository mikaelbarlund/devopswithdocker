#!/bin/sh
set -eu
echo "enter github url:"
read url
git clone $url co
cd co
echo "enter image name:"
read  image
docker build -t $image .
docker login
docker push $image
