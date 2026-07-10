# 08 - End-to-End DevOps Pipeline

## The Complete Production Pipeline

A full DevOps pipeline combining all tools learned throughout this portfolio.

## Architecture
## Stack
- **App**: Flask with health, info and metrics endpoints
- **Docker**: Containerized and pushed to Docker Hub
- **Kubernetes**: 3 pod deployment with ConfigMap
- **Terraform**: AWS VPC + EC2 provisioned as code
- **CI/CD**: GitHub Actions auto build and push
- **Monitoring**: Prometheus metrics exposed

## Live URLs (when running)
- Local K8s: via minikube service
- AWS EC2: http://<ec2-ip>:5000

## Commands
```bash
# Docker
docker build -t aabhidevops/devops-pipeline:v1 .
docker push aabhidevops/devops-pipeline:v1

# Kubernetes
kubectl apply -f k8s/
kubectl get pods

# Terraform
cd terraform
terraform init
terraform apply
terraform destroy  # Always destroy after use!
```

## Skills Demonstrated
- Docker containerization
- Kubernetes deployment and scaling
- Terraform Infrastructure as Code
- GitHub Actions CI/CD pipeline
- AWS EC2 provisioning
- Prometheus metrics
