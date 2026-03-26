# 🚀 CI/CD Pipeline using Jenkins, Docker, Terraform, Ansible & AWS

## 📌 Overview
This project demonstrates a complete end-to-end CI/CD pipeline integrating modern DevOps tools to automate application build, containerization, infrastructure provisioning, and deployment on AWS ECS using Docker images stored in AWS ECR.

---

## 🏗️ Architecture

The project consists of two repositories:

### 🔹 1. Application Repository (Private)
- Contains the application source code
- Secured using **SSH-based cloning**
- Used only for building the application

### 🔹 2. CI/CD Repository
- Contains:
  - Jenkins pipeline (`Jenkinsfile`)
  - Terraform scripts (Infrastructure provisioning)
  - Ansible playbooks (Configuration management)
  - Dockerfiles (Single-stage & Multi-stage)

---

## 🧰 Tech Stack

- **Version Control:** Git, GitHub  
- **CI/CD:** Jenkins  
- **Containerization:** Docker  
- **Container Registry:** DockerHub, AWS ECR  
- **Infrastructure as Code:** Terraform  
- **Configuration Management:** Ansible  
- **Cloud:** AWS (ECS, ECR, IAM, VPC)  
- **OS:** Ubuntu Linux  
- **Notifications:** Slack  

---

## ⚙️ CI/CD Pipeline Flow

1. **Code Checkout**
   - Jenkins clones private repo using SSH

2. **Build Stage**
   - Application build using maven build tools

3. **Docker Image Creation**
   - Single-stage & Multi-stage Dockerfiles used

4. **Push Image**
   - DockerHub + AWS ECR

5. **Infrastructure Provisioning**
   - Terraform creates:
     - ECS Cluster
     - Task Definitions
     - IAM Roles
     - Networking (Security-Group)

6. **Deployment**
   - ECS pulls image from AWS ECR and runs container

7. **Configuration**
   - Ansible configures environment and dependencies

8. **Notifications**
   - Slack alerts for build, deploy, and failures

---

## 📂 Repository Structure
ci-cd-repo/
│
├── terraform/ # Infrastructure as Code
├── ansible/ # Configuration scripts
├── docker/ # Dockerfiles (single & multi-stage)
├── jenkins/ # Jenkins pipeline
└── README.md



---

## 🔐 Security

- SSH-based private repo access
- IAM roles for AWS authentication
- Secrets managed via Jenkins credentials
- No hardcoded credentials

---

## ⚠️ Challenges Faced

- SSH integration with Jenkins  
- Terraform state management  
- ECS task definition debugging  
- Docker image optimization  
- Multi-tool pipeline integration  
- IAM permissions handling  
- Slack webhook setup  
- End-to-end automation issues  

---

## 🔔 Notifications

Slack integration provides real-time updates:
- ✅ Build Success  
- ❌ Build Failure  
- 🚀 Deployment Status  

---

## 🚀 Future Enhancements

  
- Kubernetes (EKS) Integration
- Monitoring with Prometheus & Grafana

Below things were already did hands-on different project on github-repo : `https://github.com/prade01/DevSecOpsCICD.git`
 - Blue-Green Deployment   
- SonarQube Code Analysis  
- Trivy Security Scanning
- Nexus Repository for Artifact Uploading 
 

---

## 📌 Conclusion

This project showcases a production-like CI/CD pipeline integrating:
- Automation  
- Scalability  
- Security  
- Reliability  

---

## 🙌 Author

**Pradeep Sharma**  
Production Support Engineer | DevOps Engineer | SRE | Cloud Enthusiast  

---
