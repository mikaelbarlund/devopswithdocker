# devopswithdocker
## 1.17

This conatiner enaböes you to clone a Maven project from github, build it and run the java application.
It will take the github repository as its firs parameter and the java command as the second parameter.

Example usage:
```
docker run midas80/devopswithdocker-1-17:latest https://github.com/mikaelbarlund/smallmaven " -cp target/smallmaven-1.0-SNAPSHOT.jar com.example.App"
```

To make builds faster you can maount your local .m2 folder into the container:
```
docker run -v ~/.m2:/home/developer/.m2 mbl-developer https://github.com/mikaelbarlund/smallmaven " -cp target/smallmaven-1.0-SNAPSHOT.jar com.example.App"
```




