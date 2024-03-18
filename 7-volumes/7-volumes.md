# Volumes
- docker volume ls
  - Only lists anonymous and named volumes. We manage the bind mounts
- docker inspect <container_name|id>
  - Look for the Volume field
- docker volume create <volume_name>
- docker volume inspect <volume_name>
  - Show more info about the volume
- docker volume rm <volume_name>
  - Beware to not delete the volumes you need the data!
- docker volume prune
  - Remove all the non utilized volumes
- docker run -v <volume_name>:<directory>:ro
  - Create a readonly directory as a volume

## Anonymous volumes
- docker run -v <folder>
  - Persists the container data on the /folder

## Named volumes
- docker run -v <volume_name>:<directory>

## Bind mounts
- docker run -v <host_dir>:<container_dir>
  - Extra power: use the "./" from the project to persist not only data, but your entire project

