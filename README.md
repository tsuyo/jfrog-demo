# JFrog Platform Demo

## Preparation
Artifactory
```
$ jf c use dev.gcp
$ ./script/create_project.sh -s dev.gcp -p demo
$ jf rt rc --vars "project=demo" conf/go-local.json
$ jf rt rc --vars "project=demo" conf/go-remote.json
$ jf rt rc --vars "project=demo" conf/go.json
```

Pipelines
- Select "demo" project -> Project Settings -> Integrations -> Add an Integration
  - GitHub
    - Name:github
    - Integration Type: GitHub
    - Token: <your github token>
  - Artifactory
    - Name: artifactory
    - Integration Type: Artifactory
    - Artifactory URL: <default on UI>
    - User: admin
    - API Key: <press "Get API Key">

## Clean Up
```
$ jf rt rdel --quiet demo-go-local
[....]
```