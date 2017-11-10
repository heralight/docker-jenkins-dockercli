# Jenkins docker image with docker CLI

jenkins/jenkins doesn't include docker command (cli), that's why docker-plugins failed...
This extension fix this missing part.

## Howto use it

from [docker hub](https://hub.docker.com) use this image:

[heralight/docker-jenkins-dockercli](https://hub.docker.com/r/heralight/docker-jenkins-dockercli/)

[Github link](https://github.com/heralight/docker-jenkins-dockercli)


## Actual status

This image is support alpine and debian.

### Version matrix

| Tag                  | Platform | Docker     | Docker-compose | Jenkins |
|----------------------|----------|------------|----------------|---------|
|17.09.0-ce-lts-alpine | alpine   | 17.09.0-ce | 1.17.1         | lts     |
|17.09.0-ce-lts-debian | debian   | 17.09.0-ce | 1.17.1         | lts     |  

## Make a new tag

```
make help
```

For example, to create a new git branch for docker hub auto build:

```
jenkinsversion=lts dockerversion=17.09.0-ce dockercomposeversion=1.17.1 platform=alpine tag=17.09.0-ce-lts-alpine make push
```



