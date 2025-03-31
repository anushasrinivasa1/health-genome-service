# Cloud Design and Deployment for Health Genome Result Service

LINK TO ARCHITECTURE DIAGRAM: 
https://lucid.app/lucidspark/bafb585e-9974-4436-8608-89fcb9ffac52/edit?viewport_loc=-3088%2C-940%2C5657%2C2939%2C0_0&invitationId=inv_ffe514a8-56f2-4b62-ae35-ce8a074172c8

## Overview
This project sets up a secure, scalable, and automated cloud-based infrastructure using AWS, Kubernetes, and Terraform.

## Project Structure
health-genome-service/ │── terraform/ # Terraform scripts for AWS infrastructure │── k8s/ # Kubernetes deployment manifests │── .github/workflows/ # CI/CD pipeline configuration │── README.md # Documentation

## **Deployment Steps**
1. Install Terraform and configure AWS credentials.
2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/health-genome-service.git
   cd health-genome-service

Deploy using Terraform:
terraform init
terraform plan
terraform apply -auto-approve

CI/CD Pipeline
GitHub Actions automates deployments to AWS.

## Security Measures
- **IAM Roles & Policies**: Each service has least-privilege access.
- **Database Encryption**: AWS RDS uses encryption at rest.
- **Secrets Management**: AWS Secrets Manager stores database credentials.
- **VPC Security**: Services are deployed in private subnets.

## Logging & Monitoring
- **AWS CloudWatch**: Monitors logs from Kubernetes and Lambda.
- **Prometheus & Grafana**: Collects EKS metrics.
- **AWS GuardDuty**: Detects unusual API requests.

## Rollback Strategy
1. **Infrastructure Rollback**: Run `terraform destroy` and redeploy previous Terraform version.
2. **Application Rollback**: Use Kubernetes rollback:
   ```bash
   kubectl rollout undo deployment genome-service
   cd terraform

Open Terminal and Deploy Terraform
terraform init
terraform plan
terraform apply -auto-approve

Deploy Microservices to Kubernetes

aws eks update-kubeconfig --name genome-cluster --region us-east-1
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml



