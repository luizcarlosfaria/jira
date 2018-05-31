# Supported tags and respective ```Dockerfile``` links



[![Dockerfile 7.9.2](https://img.shields.io/badge/Dockerfile-v7.9.2-blue.svg?style=flat)](https://github.com/docker-gallery/jira/blob/v.7.9.2/Dockerfile) [![Docker Hub](https://img.shields.io/badge/DockerHub-v7.9.2-blue.svg?style=flat)](https://hub.docker.com/r/luizcarlosfaria/jira/)

[![Dockerfile 7.6.0](https://img.shields.io/badge/Dockerfile-v7.6.0-lightgray.svg?style=flat)](https://github.com/docker-gallery/jira/blob/v.7.6.0/Dockerfile)

[![Dockerfile 7.5.1](https://img.shields.io/badge/Dockerfile-v7.5.1-lightgray.svg?style=flat)](https://github.com/docker-gallery/jira/blob/v.7.5.1/Dockerfile)

[![Dockerfile 7.3.0](https://img.shields.io/badge/Dockerfile-v7.3.0-lightgray.svg?style=flat)](https://github.com/docker-gallery/jira/blob/v.7.3.0/Dockerfile)




## How to use this image

### Docker Run Command

```
docker run --name customJira -d --hostname customJira -p 80:8080 -p 8005:8005 -v /some/jira/data:/var/atlassian/application-data/jira/ luizcarlosfaria/jira
```

### Docker Compose
```
version: '3.3'

services:
  jira:
    image: luizcarlosfaria/jira:7.9.2
    ports:
      - "8081:8080"
    volumes:
      - ./data/:/var/atlassian/application-data/jira/
    networks:
      - front


networks:
  front:
    driver: bridge
```
Just run ```docker-compose up```




## Volumes
* "/var/atlassian/application-data/jira/" - Jira Data Home

## Based on [openjdk:8](https://hub.docker.com/_/openjdk/) image
This image is based on openjdk:8 official image.
