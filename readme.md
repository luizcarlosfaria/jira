# Supported tags and respective ```Dockerfile``` links

* [```7.9.2```](https://github.com/docker-gallery/jira/tree/v.7.9.2), [```latest```](https://github.com/docker-gallery/jira) [(Dockerfile)](https://github.com/docker-gallery/jira/blob/v.7.9.2/Dockerfile)

* [```7.6.0```](https://github.com/docker-gallery/jira/tree/v.7.6.0), [(Dockerfile)](https://github.com/docker-gallery/jira/blob/v.7.6.0/Dockerfile)

* [```7.5.1```](https://github.com/docker-gallery/jira/tree/v.7.5.1)  [(Dockerfile)](https://github.com/docker-gallery/jira/blob/v.7.5.1/Dockerfile)

* [```7.3.0```](https://github.com/docker-gallery/jira/tree/v.7.3.0)  [(Dockerfile)](https://github.com/docker-gallery/jira/blob/v.7.3.0/Dockerfile)

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
