# 🚀 AWS DevOps Pipeline built with Terraform, Ansible and Github Actions

Production-style infrastructure provisioning and configuration using Terraform (IaC), Ansible (Automation), and GitHub Actions (CI/CD).
Demonstrates automated provisioning and configuration of cloud resources across multiple environments.

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

🧑‍💻 Developer pushes code to GitHub

⚡ GitHub Actions triggers the workflow

---

🔹 2. Build & Push

🐳 Docker image is built & pushed to Docker Hub registry

---

🔹 3. Infrastructure Provisioning

🌍 Terraform provisions/updates AWS resources

🖥️ EC2 public IP is generated dynamically

---

🔹 4. Configuration & Deployment

🛠️ Ansible installs and configures Docker

🚀 Latest container is pulled and started

---

🔹 5. Access

🌐 Application is available via EC2 public IP (Port 80)

---

### 📈 Future Improvements

🔐 Add basic security scanning

🔄 Improve CI workflow with validations (linting, formatting)

📦 Use versioned Docker image tags instead of latest

⚙️ Add environment-specific configs (dev/stg/prd separation)

---

### 📜 License

This project is licensed under the MIT License. See the LICENSE file for more details.
