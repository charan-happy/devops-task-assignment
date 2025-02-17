# DevOps Engineer - Assignment

## Objective
Your task is to build and deploy a containerized application on AWS using EKS (Elastic Kubernetes Service) with an integrated CI/CD pipeline that includes cold build, code deployment, and automated updates.

## Use Case
Aivar is deploying a microservices-based application that needs to be containerized, orchestrated, and automatically deployed in AWS EKS. You will:
1. Deploy an example application (based on hello-kubernetes).
2. Implement a CI/CD pipeline with cold builds, rolling deployments, and version management.
3. Set up monitoring, logging, and infrastructure as code using Terraform or CloudFormation.

## Assignment Breakdown

### 1. Infrastructure Setup
- Provision an EKS Cluster using Terraform or AWS CloudFormation.
- Configure AWS IAM roles, security groups, and access policies for Kubernetes.
- Set up AWS ALB Ingress Controller to expose services.

### 2. Containerization & Deployment
- Fork and modify the hello-kubernetes repository to include a new microservice (e.g., a Python FastAPI app).
- Build a Docker image and push it to Amazon Elastic Container Registry (ECR).
- Deploy the application to EKS using Helm charts or Kubernetes manifests.

### 3. CI/CD Pipeline with Cold Build & Code Deploy

#### Build Process (Cold Build)
- Set up GitHub Actions, GitLab CI, or Jenkins to:
  - Trigger a cold build when changes are pushed to the repo.
  - Build and tag the Docker image based on Git commit hash or versioning.
  - Push the image to Amazon ECR.

#### Deployment Process (AWS CodeDeploy + Rolling Updates)
- Use AWS CodePipeline to automate the deployment flow.
- Use AWS CodeBuild for building application artifacts.
- Deploy container updates using AWS CodeDeploy with a rolling strategy:
  - Blue/Green deployment (optional).
  - Canary deployments to test new versions before full rollout.
  - Rollback mechanism in case of failure.

### 4. Monitoring & Logging
- Set up Amazon CloudWatch to track logs and metrics.
- Use Prometheus & Grafana for real-time Kubernetes monitoring.
- Implement Fluentd or AWS CloudTrail for application logs.