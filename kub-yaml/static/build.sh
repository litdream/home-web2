#!/bin/bash

# Temp, removing old pod
kubectl delete pod home-web2-pod

kubectl apply -f nginx-static-deploy.yaml
kubectl apply -f nginx-static-service.yaml


# If pod is annoying, ssh to it:
# kubectl exec -it <pod-name> -n <namespace> -- bash
#   - https://stackoverflow.com/questions/45714658/need-to-do-ssh-to-kubernetes-pod
