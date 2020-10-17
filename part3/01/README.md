# devopswithdocker
## 3.1
### Frontend before
```
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
6b72461469c1        16 hours ago        /bin/sh -c #(nop)  CMD ["start"]                0B                  
c3a2b780086d        16 hours ago        /bin/sh -c #(nop)  ENTRYPOINT ["npm"]           0B                  
6b414f79d5c6        16 hours ago        /bin/sh -c #(nop)  EXPOSE 5000                  0B                  
25159da6a618        16 hours ago        /bin/sh -c #(nop)  ENV API_URL=http://localh…   0B                  
dc9c17fd36bd        16 hours ago        /bin/sh -c npm install                          212MB               
e08a7962efbb        16 hours ago        /bin/sh -c git clone https://github.com/dock…   917kB               
1b78390ce977        16 hours ago        /bin/sh -c apt-get install -y nodejs            103MB               
30ac47d64bb6        16 hours ago        /bin/sh -c curl -sL https://deb.nodesource.c…   33.4MB              
b6065a748951        16 hours ago        /bin/sh -c apt-get update && apt-get install…   1.88MB              
6f70ac82c5e5        16 hours ago        /bin/sh -c #(nop) WORKDIR /home                 0B                  
8a760c4f9c85        16 hours ago        /bin/sh -c apt-get update && apt-get install…   120MB               
096efd74bb89        3 weeks ago         /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           3 weeks ago         /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           3 weeks ago         /bin/sh -c rm -rf /var/lib/apt/lists/*          0B                  
<missing>           3 weeks ago         /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B                
<missing>           3 weeks ago         /bin/sh -c #(nop) ADD file:23a55d7e93b396e49…   127MB               

```
## Backend before
```
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
67be40c8cd89        16 hours ago        /bin/sh -c #(nop)  CMD ["start"]                0B                  
68201bf47604        16 hours ago        /bin/sh -c #(nop)  ENTRYPOINT ["npm"]           0B                  
56fdcdc79646        16 hours ago        /bin/sh -c #(nop)  EXPOSE 8000                  0B                  
8d6e1cfd0210        16 hours ago        /bin/sh -c #(nop)  ENV FRONT_URL=http://loca…   0B                  
afe20ef59be3        16 hours ago        /bin/sh -c npm install                          18.1MB              
fd21e53e3235        16 hours ago        /bin/sh -c git clone https://github.com/dock…   226kB               
1b78390ce977        16 hours ago        /bin/sh -c apt-get install -y nodejs            103MB               
30ac47d64bb6        16 hours ago        /bin/sh -c curl -sL https://deb.nodesource.c…   33.4MB              
b6065a748951        16 hours ago        /bin/sh -c apt-get update && apt-get install…   1.88MB              
6f70ac82c5e5        16 hours ago        /bin/sh -c #(nop) WORKDIR /home                 0B                  
8a760c4f9c85        16 hours ago        /bin/sh -c apt-get update && apt-get install…   120MB               
096efd74bb89        3 weeks ago         /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           3 weeks ago         /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           3 weeks ago         /bin/sh -c rm -rf /var/lib/apt/lists/*          0B                  
<missing>           3 weeks ago         /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B                
<missing>           3 weeks ago         /bin/sh -c #(nop) ADD file:23a55d7e93b396e49…   127MB               

```
