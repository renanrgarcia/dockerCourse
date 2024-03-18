# Volumes
- docker volume ls
- docker inspect <container_name|id>
  - Look for the Volume field

## Anonymous volumes
- docker run -v <folder>
  - Persists the container data on the /folder

## Named volumes
- docker run -v <volume_name>:<directory>

## Bind mounts
- docker run -v <host_dir>:<container_dir>
  - Extra power: use the "./" from the project to persist not only data, but your entire project