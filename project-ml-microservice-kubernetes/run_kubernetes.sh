#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
path=zeshaann/housing_price_prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacitydeployment --image=$path 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
podname=$(kubectl get pods -o=name)
kubectl port-forward $podname 8000:80
