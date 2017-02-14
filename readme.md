# Supported tags and respective ```Dockerfile``` links

* [```7.3.0```](https://github.com/docker-gallery/jira/tree/v.7.3.0), [```latest```](https://github.com/docker-gallery/jira/blob/master/Dockerfile)

## How to use this image

```
docker run --name customJira -d --hostname customJira -p 80:8080 -p 8005:8005 -v /some/jira/data:/var/atlassian/application-data/jira/ -v  /some/jira/install:/opt/atlassian/jira/ luizcarlosfaria/jira
```

## Volumes
* "/var/atlassian/application-data/jira/" - Jira Data Home
* "/opt/atlassian/jira/" - Jira Install Home

## Based on [openjdk:8](https://hub.docker.com/_/openjdk/) image
This image is based on openjdk:8 official image.
