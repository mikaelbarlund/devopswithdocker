# devopswithdocker
## 1.5

```
docker run --rm -it  ubuntu:16.04 sh -c 'apt update; apt install curl -y;echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```
