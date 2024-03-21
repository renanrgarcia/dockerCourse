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