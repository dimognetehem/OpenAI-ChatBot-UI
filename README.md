# DevSecOps: OpenAI Chatbot UI Deployment in EKS with Jenkins and Terraform
## Project Architecture :

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/DevSecOps-OpenAI-Chatbot-Architecture.png?raw=true)

## 📋 Project Overview

A modern ChatBot UI application deployed using a comprehensive DevSecOps pipeline. This project demonstrates the implementation of security-first CI/CD practices, infrastructure as code, and cloud-native technologies.

## 🏗️ Architecture

### Infrastructure Components
- **AWS Cloud Infrastructure** managed and provisioned with Terraform
- **Jenkins Server** running on EC2 (Ubuntu 22.04 LTS - t2.xlarge instance type)
- **Docker** containerization
- **Kubernetes** for container orchestration
- **AWS EKS** for managed Kubernetes service

### Security Tools Integration
- **SonarQube** for code quality and security analysis
- **OWASP Dependency Check** for dependency vulnerability scanning
- **Trivy** for container and filesystem security scanning

## 🔒 Security Features

- Infrastructure security with AWS Security Groups
- Container security scanning with Trivy
- Code quality gates with SonarQube
- Dependency vulnerability checking
- Secure Docker image management
- Kubernetes security best practices

## 🛠️ Technology Stack

### Infrastructure & Cloud
- AWS (EC2, VPC, EKS)
- Terraform
- Docker
- Kubernetes

### CI/CD & DevSecOps
- Jenkins
- SonarQube
- Trivy
- OWASP Dependency Check

### Application
- Node.js
- React
- OpenAI API Integration

## 📦 Pipeline Stages

1. **Source Code Management**
   - Git integration
   - Branch management
   - Code checkout

2. **Security Scanning**
   ```groovy
   - SonarQube Analysis
   - Quality Gates
   - OWASP Dependency Check
   - Trivy Filesystem Scan
   ```

3. **Containerization**
   ```groovy
   - Docker image build
   - Security scan with Trivy
   - Push to Docker Hub
   ```

4. **Deployment**
   ```groovy
   - Container deployment
   - Kubernetes orchestration
   - Health checks
   ```

## 🚀 Implementation Steps

1. **Infrastructure Setup**
   - VPC and Security Groups configuration
   - EC2 instance provisioning
   - Jenkins server setup

2. **Tools Installation**
   - Jenkins and required plugins
   - Security scanning tools
   - Docker and Kubernetes tools

3. **Pipeline Configuration**
   - Jenkinsfile creation
   - Security scan integration
   - Docker build and push setup

4. **Kubernetes Deployment**
   - EKS cluster setup
   - Deployment configuration
   - Service exposure

## 💡 Key DevSecOps Practices Implemented

- Infrastructure as Code (IaC)
- Security as Code (SaC)
- Continuous Security
- Automated Vulnerability Scanning
- Container Security
- Compliance as Code

## 🎯 Skills Demonstrated

- Cloud Infrastructure Management
- Security Tool Integration
- CI/CD Pipeline Development
- Container Orchestration
- Infrastructure Automation
- Security Best Practices
- Cloud-Native Development

## 📝 Prerequisites

- AWS Account
- Docker Hub Account
- Jenkins Server
- Terraform installed
- kubectl configured
- AWS CLI configured

## 🔧 Setup Instructions

1. Clone the repository

   ```bash
   git clone https://github.com/dimognetehem/OpenAI-ChatBot-UI.git
   ```

2. Deploy Infrastructure

   ```bash
   cd Jenkins-Server-TF
   ```
   
   ```bash
   terraform init
   ```
![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/images/main/initTerraform.png?raw=true)

   ```bash
   terraform apply
   ```

3. Configure Jenkins

   - Install required plugins
    Navigate to Manage Jenkins → Plugins → Available Plugins and install the following.

    ```go
    1 → Eclipse Temurin Installer

    2 → SonarQube Scanner

    3 → NodeJs Plugin

    4 → Docker

    5 → Docker commons

    6 → Docker pipeline

    7 → Docker API

    8 → Docker Build step

    9 → Owasp Dependency Check

    10 → Kubernetes

    11 → Kubernetes CLI

    12 → Kubernetes Client API

    13 → Kubernetes Pipeline DevOps steps

    14 → AWS Credentials

    15 → Pipeline: AWS Steps
    ```


   - Configure credentials
   - Set up pipeline

## 📈 Future Improvements

- [ ] Implement GitOps practices
- [ ] Add monitoring and observability
- [ ] Enhance security scanning
- [ ] Implement auto-scaling
- [ ] Add disaster recovery

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

- **Franck TEHEM**
- Role: DevSecOps Engineer
- [GitHub](https://github.com/dimognetehem)

---
*This project was developed as part of a DevSecOps portfolio demonstration, showcasing modern cloud-native security practices and automation.*


