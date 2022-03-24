# JFrog Platform Demo

## Preparation
Artifactory
```
$ jf c use dev.gcp
$ ./script/create_project.sh -s dev.gcp -p demo
$ ./script/create_repo.sh -s dev.gcp -u admin -p demo go ./conf
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

