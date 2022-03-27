# JFrog Platform Demo

## Preparation
Artifactory
```
$ jf c use dev.gcp
$ ./script/create_project.sh -s dev.gcp -p demo
$ jf rt rc --vars "project=demo" artifactory/go-local.json
$ jf rt rc --vars "project=demo" artifactory/go-remote.json
$ jf rt rc --vars "project=demo" artifactory/go.json
$ jf rt rc --vars "project=demo" artifactory/docker-local.json
$ jf rt rc --vars "project=demo" artifactory/docker-remote.json
$ jf rt rc --vars "project=demo" artifactory/docker.json
```

Pipelines
- Select "demo" project -> Project Settings -> Integrations -> Add an Integration
  - GitHub
    - Name: github
    - Integration Type: GitHub
    - Token: <your github token>
  - Artifactory
    - Name: artifactory
    - Integration Type: Artifactory
    - Artifactory URL: <default on UI>
    - User: admin
    - API Key: <press "Get API Key">

- Select "demo" project -> Project Settings -> Pipeline Sources -> Add Pipeline Source -> From YAML
  - Branch Type: Single Branch
  - Protocol Type: HTTPS
  - Name: jfrog_demo_core
  - SCM Provider Integration: github
  - Repository Full Name: tsuyo/jfrog-demo-core  
  - Branch: main
  - Pipeline Config File Filter: pipelines/pipelines-.+.yml

## Clean Up
```
$ jf rt rdel --quiet demo-go-local
[....]
```