#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="johnwick98/uda_microservices:v1.0.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run uda-microservices --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward uda-microservices 8000:80
kubectl logs uda-microservices

