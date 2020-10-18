# devopswithdocker
## 3.3 Building images inside of a container
Usage:
```
docker run -it -rm -v /var/run/docker.sock:/var/run/docker.sock midas80/dockerbuilder
```
The script will prompt for GitHub repository, name of image to push. Once the image has been built the script will prompt for DockerHub credentials.

Typical output:
```enter github url:
https://github.com/mikaelbarlund/simple-node
Cloning into 'co'...
remote: Enumerating objects: 418, done.
remote: Counting objects: 100% (418/418), done.
remote: Compressing objects: 100% (331/331), done.
remote: Total 418 (delta 81), reused 402 (delta 73), pack-reused 0
Receiving objects: 100% (418/418), 566.26 KiB | 1.39 MiB/s, done.
Resolving deltas: 100% (81/81), done.
enter image name:
midas80/simple-node
Sending build context to Docker daemon    661kB
Step 1/7 : FROM node
 ---> 63dd52d64251
Step 2/7 : WORKDIR /app
 ---> Using cache
 ---> 6685c13785b8
Step 3/7 : COPY package.json /app
 ---> Using cache
 ---> 1cb004d7ef47
Step 4/7 : RUN npm install
 ---> Using cache
 ---> 392180d9f7f5
Step 5/7 : COPY . /app
 ---> fb0d8de26b7c
Step 6/7 : CMD node index.js
 ---> Running in becc43574986
Removing intermediate container becc43574986
 ---> 8bbd8bfe77c6
Step 7/7 : EXPOSE 5000
 ---> Running in a08abb70d02d
Removing intermediate container a08abb70d02d
 ---> 0b4f36a7061f
Successfully built 0b4f36a7061f
Successfully tagged midas80/simple-node:latest
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: midas80
Password: 
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
The push refers to repository [docker.io/midas80/simple-node]
c89aa94f02dc: Pushed 
3895440a9519: Layer already exists 
30a64d442862: Layer already exists 
1a478a4bf4a5: Layer already exists 
b9914fd725cf: Layer already exists 
fb9a98332674: Layer already exists 
c9b47a3c6380: Layer already exists 
8211c12c1c23: Layer already exists 
1d3ec06e3d4f: Layer already exists 
9e5330403dba: Layer already exists 
8bd20dc0b7e5: Layer already exists 
94b70b410c2a: Layer already exists 
3567db1eb737: Layer already exists 
latest: digest: sha256:5df76cba5225fbfa34847e311fab4dcda6acf9716111c94be54c32f91c5db7bb size: 3050
```
