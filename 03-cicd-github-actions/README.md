# 03 - CI/CD with GitHub Actions

## Project: Automated Docker Build & Push Pipeline

Every push to main branch automatically builds and pushes Docker image to Docker Hub.

## Pipeline Flow
Code Push → GitHub Actions → Docker Build → Docker Hub

## Workflow
- Trigger: Push to main branch
- Build: Docker image from Dockerfile
- Push: aabhidevops/flask-cicd:latest

## Skills Demonstrated
- GitHub Actions workflow
- CI/CD pipeline design
- Docker Hub integration
- Secrets management
