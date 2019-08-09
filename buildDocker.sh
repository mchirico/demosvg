#!/bin/bash



docker build .  --no-cache -t acrDevelopment.azurecr.io/nodedev-pod
docker push acrDevelopment.azurecr.io/nodedev-pod:latest

az acr repository list --name acrDevelopment --output table

# List and delete
# az acr repository list --name acrDevelopment --output table
# az acr repository delete --name acrDevelopment --image tfgraphapp-pod

# Common Commands:
# az aks browse --resource-group Development_K8S_USEast2 --name Dev-Platform-v0


