# Blue/Green AKS Deployment with Terraform & Jenkins

## Structure
- **terraform/**: IaC modules & root config
- **k8s-manifests/**: Kubernetes Deployment & Service YAML
- **jenkins/Jenkinsfile**: CI/CD pipeline

## Quickstart
1. Install Azure CLI, Terraform, Docker, Jenkins agents.
2. `cd terraform` & configure `terraform.tfvars`.
3. `terraform init && terraform apply -auto-approve` to create RG, VNet, AKS clusters, App Gateway.
4. In Jenkins, run the provided pipeline for end‑to‑end build, deploy, and traffic switch.
