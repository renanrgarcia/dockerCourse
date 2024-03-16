# Networks
- Network types:
  - Bridge: default network, for internal communication between containers
    - Dispite being called bridge, the NAT (Network Address Translation) standard is used.
    - Best pratice: to create a new virtual network for each app. Ex: my_web = mysql, apache php | my
  _api = flask, nodeJS
    - Command "iptables -t nat -L" lists all NAT rules
  - Host: do the actual bridge (uses the same IP on container and on machine)
    - No need to publish ports (-p | -P)
    - Cannot start multiple containers on the same port
    - Does not work in swarm mode 
  - None
    - Does not have external access neither from other containers
- docker network ls
- Ex: 
  - docker run --name net_host1 -d --network host nginx:alpine; docker run --name net_host2 -d --network host nginx:alpine  
  - In this case, one of the container is going down, because is the same port.
  - You can: "docker network inspect <network_id>" to see the containers running in that network
  - After some time, see one of the containers with "Exited" status on "docker container ls -a"
  - On "docker logs <container_id>" you can see an error "Address in use"
- docker exec -it <container_name> sh 
  - Terminal used to test the communication with the different networks. Command to test: "ping <Network_IP>"