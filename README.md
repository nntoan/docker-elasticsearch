# Elasticsearch container based on elastic.co

Currently major versions are supported:
- 5.6.x (latest version 5.6.16)
- 6.8.x (latest version 6.8.23)

## To build the image
Docker Cloud is now responsible for building and uploading a new image to the Docker Cloud Private Docker Registry.
To initiate a build, you need to update the Dockerfile with your changes, test and when successful commit these changes (BUT DO NOT PUSH YET) then add a tag against this new commit in the following format:

APPLICATION_MAJOR_VERSION-MINOR_VERSION

eg.
6.7-0.0.0

## To run the container (Version 2 now uses docker-compose)
```bash
elasticsearch:
  image: nntoan/elasticsearch:5.6-16.0.0
  container_name: elasticsearch
  environment:
    - cluster.name=webserver_default
    - bootstrap.memory_lock=true
    - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
  ulimits:
    memlock:
      soft: -1
      hard: -1
```

## docker-compose command reference
https://docs.docker.com/compose/compose-file/

## To ssh inside container
```bash
docker exec -it elasticsearch bash
```

