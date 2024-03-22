# Docker compose
- Keys:
  - version: compose version
  - services: containers/services to run on the application
  - volumes: possible volumes
  - networks: possible networks
- docker compose up -d
  - Runs the structure based on the .yaml instructions
  - -d executes detached
- docker compose down
  - Stop the containers
- docker compose ps
  - Returns a containers summary 

## Environment variables
- env_files
  - Variables: ${variable}
  - Util if you have sensible data
- Example on compose:
env_file:
  - ./config/wp.env

## Networks
- Example:
networks:
  backend:
    driver: bridge

## Build images within docker-compose
- Use the key 'build': 'image'

## Bind mount within docker-compose
- Used to persist data without down and up your compose
volumes:
  - "<local-path>:<container-path>"