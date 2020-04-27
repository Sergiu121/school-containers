# school-containers
Repo used for running shool infrastructure in containers

# Running containers
In order to run a container you must `cd` in the specific container directory
and run the following command.
```
docker-compose up -d
```

# Connecting to a container
In order to connect to a container, you must run the following command from the
service specific directory.
```
docker-compose exec <container-name> bash
```
