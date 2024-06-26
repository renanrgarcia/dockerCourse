# Kubernets

## Base Concepts
- Kubernets: a container orchestration tool, created by Google
  - Manages a cluster of nodes to run containers always in the same way
- Nodes: instance that participates in the cluster
- Master node: the manager node

## Fundamentals
- Control plane: the controller node, responsible for managing the cluster
- Nodes: machines that are controlled by the control plane
- Deployment: executes a image/project on a pod
- Pods: a group of containers running on the node
- Service: expose the pods to the external world
- Kubectl: command line interface to interact with the cluster
  - Install first: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
  - Then run: kubectl version
- Minikube: sort of a simulator of Kubernetes, for local development
  - Install first: https://minikube.sigs.k8s.io/docs/start/
  - Then run: minikube version
- Deployments: service with a group of Pods 

## Minikube
- `minikube start --driver=<driver>`
  - Start the simulator and create a minikube cluster
  - the driver can be: docker, virtualbox, kvm, xhyve
- `minikube status`
  - Get the status of the minikube cluster
- `minikube stop`
  - Stop the minikube cluster
- `minikube dashboard`
  - Open the dashboard in the browser
  - `minikube dashboard --url`: obtain the URL of the dashboard 
- `kubectl create deployment <deployment_name> --image=<image_name>`
  - Create a deployment in the cluster