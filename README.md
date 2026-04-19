# 🚀 Terraform + Ansible Multi-Environment Infrastructure

Production-style infrastructure provisioning and configuration management using Terraform (IaC), Ansible (Automation) and GitHub Action (CI/CD).
This project demonstrates how to provision cloud resources and configure them automatically across multiple environments.

---

![AWS](https://img.shields.io/badge/Cloud-AWS-orange?logo=amazonaws&logoColor=white)

![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Container-Docker-blue?logo=docker&logoColor=white)
![Ansible](https://img.shields.io/badge/Automation-Ansible-red?logo=ansible&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub_Actions-orange?logo=githubactions&logoColor=white)

![License](https://img.shields.io/badge/License-MIT-green)

---

### 🔄 Detailed Project Workflow:

<project workflow>

---

### 📚 Project Snapshots

<app ui>

<terraform dashboard>

<github actions dashboard>

---

### 📌 Project Overview

This project focuses on:

🏗️ Provisioning infrastructure using Terraform

⚙️ Configuring servers using Ansible

🌍 Supporting multiple environments (e.g., dev, stage, prd)

🔄 Creating a reusable and modular DevOps workflow using GitHub Actions

---

### 🛠️ Technical Stack

☁️ Cloud → AWS (EC2, VPC, SG, IAM)

🏗️ IaC → Terraform

⚙️ Config Management → Ansible

🔄 CI/CD → GitHub Actions

📦 Containerization → Docker

---

### 📈 Deployment Workflow

🔹 1. Code Push

🚀 Developer pushes updates to GitHub.
    
🔄 GitHub Actions triggers the deploy.yml workflow.

🔹 2. Build & Registry

🏗️ GitHub Actions builds a Multi-stage Docker image.

📦 Image is pushed to Docker Hub with the :latest tag.

🔹 3. Infrastructure Provisioning

🏗️ Terraform initializes and applies the plan.

🌐 AWS resources (EC2/VPC) are verified or created.

📡 Output returns the dynamic EC2 Public IP.

🔹 4. Configuration & Deployment

⚙️ Ansible installs Docker on the fresh instance.

🔑 User permissions and Docker groups are configured.

🚀 The Docker image is pulled and run with restart: always policy.

🔹 5. Live Access

🌐 Dashboard becomes accessible at the public IP on Port 80.

---
### 📈 Future Improvements

🔄 Integrate CI/CD (GitHub Actions / Jenkins)

📦 Add Docker-based deployments

☸️ Extend to Kubernetes provisioning

🔐 Add security scanning (Trivy / Checkov)

---

### 📜 License

This project is licensed under the MIT License. See the LICENSE file for more details.
