# devopswithdocker
## 3.2 A deployment pipeline to heroku
I create a simple Hello World node app. Source is located in [mikaelbarlund/simple-node](https://github.com/mikaelbarlund/simple-node).

I configured simple-node as a new project in circleci using the config.yml from th egithub repo:
```
version: 2.1
orbs:
  heroku: circleci/heroku@0.0.10
workflows:
  heroku_deploy:
    jobs:
      - heroku/deploy-via-git
```
Pushing to git makes CircleCI push the changes to [mb-simple-node.herokuapp](https://mb-simple-node.herokuapp.com/).

This is the build log from heroku:
```
-----> Node.js app detected
       
-----> Creating runtime environment
       
       NPM_CONFIG_LOGLEVEL=error
       NODE_ENV=production
       NODE_MODULES_CACHE=true
       NODE_VERBOSE=false
       
-----> Installing binaries
       engines.node (package.json):  unspecified
       engines.npm (package.json):   unspecified (use default)
       
       Resolving node version 12.x...
       Downloading and installing node 12.19.0...
       Using default npm version: 6.14.8
       
-----> Restoring cache
       - node_modules
       
-----> Installing dependencies
       Installing node modules
       added 50 packages in 1.074s
       
-----> Build
       
-----> Caching build
       - node_modules
       
-----> Pruning devDependencies
       audited 50 packages in 0.748s
       found 0 vulnerabilities
       
       
-----> Build succeeded!
-----> Discovering process types
       Procfile declares types     -> we
       Default types for buildpack -> web
-----> Compressing...
       Done: 22.9M
-----> Launching...
       Released v7
       https://mb-simple-node.herokuapp.com/ deployed to Heroku
```