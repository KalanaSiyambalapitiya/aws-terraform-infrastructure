#Infrastructure as Code (Terraform)

## 📌 Project Overview

This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision and manage AWS infrastructure. The infrastructure includes an EC2 instance, Security Group, SSH key authentication, User Data script for automatic Nginx installation, and reusable Terraform modules.

The project is developed as part of the ** Infrastructure as Code (Terraform)** practical .

---

# 🎯 Learning Objectives

- Understand Terraform Fundamentals
- Configure AWS Provider
- Manage Terraform State
- Use Terraform Modules
- Configure Remote Backend (Amazon S3)
- Manage Multiple Environments using Workspaces
- Deploy AWS Infrastructure using Code

---

# 🛠 Technologies Used

- Terraform
- Amazon Web Services (AWS)
- Amazon EC2
- Amazon S3
- AWS Security Groups
- Ubuntu 24.04 LTS
- Bash Scripting
- Nginx
- Git
- GitHub
- Visual Studio Code

---

# 📁 Project Structure

```
terraform-week8-lab/
│
├── main.tf
├── variable.tf
├── output.tf
├── security.tf
├── README.md
├── .gitignore
│
├── modules/
│   └── ec2/
│       ├── main.tf
│       ├── user_data.sh
│       └── keys/
│
└── screenshots/
```

---

# ⚙ Infrastructure Components

This project provisions the following AWS resources:

- EC2 Instance
- Security Group
- SSH Key Pair
- User Data Script
- Nginx Web Server
- Terraform Module
- Terraform State
- Remote Backend (S3)
- Terraform Workspaces

---

# 📜 User Data Script

The EC2 instance automatically installs and starts Nginx during launch.

```bash
#!/bin/bash

apt update -y
apt install nginx -y
systemctl enable nginx
systemctl start nginx
```

---

# 🚀 Getting Started

## 1. Clone Repository

```bash
git clone https://github.com/YourUsername/terraform-week8-lab.git

cd terraform-week8-lab
```

---

## 2. Initialize Terraform

```bash
terraform init
```

---

## 3. Validate Configuration

```bash
terraform validate
```

---

## 4. Format Terraform Files

```bash
terraform fmt
```

---

## 5. Preview Infrastructure

```bash
terraform plan
```

---

## 6. Deploy Infrastructure

```bash
terraform apply
```

Type

```
yes
```

when prompted.

---

## 7. Verify Deployment

SSH into the EC2 instance.

```bash
ssh -i <private-key> ubuntu@<public-ip>
```

Check Nginx service.

```bash
systemctl status nginx
```

or

```bash
curl localhost
```

---

## 8. Destroy Infrastructure

```bash
terraform destroy
```

---

# 📦 Terraform Commands

| Command | Description |
|----------|-------------|
| terraform init | Initialize Terraform |
| terraform validate | Validate configuration |
| terraform fmt | Format Terraform files |
| terraform plan | Preview execution plan |
| terraform apply | Deploy infrastructure |
| terraform destroy | Remove infrastructure |

---

# 🌍 Terraform Features Used

✅ Providers

✅ Variables

✅ Outputs

✅ Resources

✅ Modules

✅ State Management

✅ User Data

✅ Remote Backend (S3)

✅ Workspaces

---

# 🔐 Security

The project uses:

- Security Groups
- SSH Key Authentication
- Infrastructure as Code best practices

Sensitive files such as private keys and Terraform state files are excluded using `.gitignore`.

---

# 📂 .gitignore

```gitignore
.terraform/
*.tfstate
*.tfstate.*
terraform.tfvars
*.backup
*.pem
*.key
crash.log
```

---

# 📸 Project Screenshots

Add screenshots of the following:

- Terraform Init
- Terraform Plan
- Terraform Apply
- AWS EC2 Instance
- Security Group
- SSH Connection
- Nginx Running
- Browser Output

Example:

```
screenshots/
│
├── terraform-init.png
├── terraform-plan.png
├── terraform-apply.png
├── ec2-instance.png
├── security-group.png
├── ssh-login.png
├── nginx-running.png
└── browser-output.png
```

---

# 📈 Expected Output

After deployment:

- EC2 instance is created.
- Security Group is attached.
- SSH connection is successful.
- Nginx is automatically installed.
- Web server starts successfully.
- Infrastructure is fully managed using Terraform.

---

# 📚 Learning Outcomes

After completing this project, you will understand how to:

- Provision AWS infrastructure using Terraform.
- Organize code using modules.
- Automate server configuration with User Data.
- Manage Terraform state.
- Configure remote backends.
- Use workspaces for multiple environments.
- Follow Infrastructure as Code best practices.

---

# 👨‍💻 Author

**Kalana Siyambalapitiya**

Infrastructure as Code (Terraform)

GitHub: https://github.com/YourUsername

---
 
