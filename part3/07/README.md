# devopswithdocker
## 3.7
I started from the [Dockerfile](1_13/Dockerfile.bigAndInsecure) from excersie 13 of part 1.
I did the following changes:
1. I created a minimal jdk 11 for Spring boot in a stage
2. I do the git chekout in a stage container (FROM alpine/git)
3. I build the project in a preliminary container (FROM openjdk:11-jdk)
4. I run the actual application in a debian:strech-slim container where 
   - I install the self-packaged minimal-java
   - I copy in the built jar-file
5. I run the app as non-root user

Size of image was reduced from 614MB to 126 MB:
```
devopswithdocker3-7                                latest                 e83fd80983a9        About a minute ago   126MB
devopswithdocker3-7-old                            latest                 0b86184faeee        43 hours ago         614MB
```
