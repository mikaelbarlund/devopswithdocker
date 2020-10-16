# devopswithdocker
## 1.17

This conatiner enaböes you to clone a Maven project from github, build it and run the java application.
It will take the github repository as its firs parameter and the java command as the second parameter.

Example usage:
```
docker run mbl-developer https://github.com/mikaelbarlund/smallmaven " -cp target/smallmaven-1.0-SNAPSHOT.jar com.example.App"
```





