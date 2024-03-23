# Docker Swarm

## Concepts
- Docker Swarm: a container orchestration tool for clustering and scheduling Docker containers
- Nodes: instance that participates in the swarm
- Manager node: manages the other nodes in the swarm
- Worker nodes: node that works to the manager node
- Service: a group of tasks that the manager node ordain to run by the worker nodes
- Task: a group of commands executed by the nodes

## Platforms
- Docker Swarm can be used on AWS and Docker Labs

### AWS
- You have to install docker into each node: 
  - `sudo yum update -y`
    - Update the images to the latest version
  - `sudo yum install -y docker`
  - `sudo service docker start`
  - `sudo usermod -a -G docker ec2-user`
    - Add the ec2-user to the docker group (permission)

## Commands
- `docker swarm init --advertise-addr <ip_address>`
  - Initiate the swarm and declare the server IP to transform it into a manager
- `docker node ls`
  - List the nodes in the swarm
  - Just the manager can see the nodes
- `docker swarm join --token <token> <ip_address>:<port>`
  - Join a node in the swarm
  - The machine will be a worker node
  - The tasks will be scheduled by the manager node and will be executed by the workers nodes in the swarm
- `docker swarm leave --force`
  - The node will be removed from the swarm
  - Uses -f to force the removal of the node
  - If exits containers, they will be removed
- `docker service create --name <service_name> <image_name>`
  - Create a service (container)
  - The service will be managed by the swarm manager
- `docker service ls`
  - List the services
  - Just the manager can see the services
- `docker service rm <service_name>`
  - Remove a service
- `docker service scale <service_name> <number>`
  - Scale a service
- `docker service create --name <service_name> --replicas <number> <image_name>`
  - Create a service with replicas (Task that replicates the service into the worker nodes)
- If a container is removed from a worker node, the container will be re-scheduled by the manager node
- `docker swarm join-token manager`
  - Returns the join token for the manager node
  - The token is used to join the worker nodes in the swarm
- `docker info`
  - Display information about the swarm
- `docker node rm <node_id>`
  - Remove a node from the swarm
  - It's a manager node only command
- `docker service inspect <service_name>`
  - Inspect a service
- `docker service ps <service_name>`
  - List the running (or stopped) tasks (containers) of a service
  - It's similar to `docker ps -a`
- `docker stack deploy -c <compose_file.yaml> <stack_name>`
  - Given that we are in swarm mode, we can use the nodes as replicas
- `docker service scale <service_name>=<number>`
  - Scale a service making it have <number> replicas on the worker nodes
- `docker node update --availability <drain|active> <node_id>`
  - The node stops accepting new tasks from the manager node by using <drain>
    - The node's services will not appear in `docker node ps`
  - We can reactivate using <active>
- `docker service update --image <image_name> <service_name>`
  - Update the image of a service, unless the service is not active
- `docker service create --network <network_name> <image_name>`
  - Create a network with `docker network create --driver overlay <network_name>`
  - The driver of the connection between instances is called "overlay"
  - Then we can connect services to it
  - If we demilitate the network, the services within the network will be connected, but the rest of the swarm will not be
- `docker service update --network <network_name> <service_name>`
  - Update the network of a created service