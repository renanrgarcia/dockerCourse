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