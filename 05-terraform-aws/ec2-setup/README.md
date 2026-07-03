# 05 - Terraform + AWS

## Project: AWS Infrastructure as Code

Provisioned complete AWS infrastructure using Terraform.

## Resources Created
- VPC with CIDR 10.0.0.0/16
- Public Subnet
- Internet Gateway
- Route Table
- Security Group (SSH + HTTP)
- EC2 Instance (t3.micro)

## Commands
```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

## Skills Demonstrated
- Infrastructure as Code (IaC)
- Terraform providers and resources
- AWS VPC networking
- EC2 provisioning
