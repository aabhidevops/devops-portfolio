# 04 - Kubernetes

## Project: Flask App on Kubernetes

Deployed a containerized Flask app on Kubernetes with auto-healing and scaling.

## Commands Used
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl scale deployment flask-app --replicas=4
kubectl delete pod <pod-name>  # Self healing test
```

## Skills Demonstrated
- Kubernetes Deployments
- Services and NodePort
- Self healing — auto pod recreation
- Horizontal scaling
