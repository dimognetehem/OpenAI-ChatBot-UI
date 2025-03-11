# DevSecOps: OpenAI Chatbot UI Deployment in EKS with Jenkins and Terraform
## 🏗️ Project Architecture :

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/DevSecOps-OpenAI-Chatbot-Architecture.png?raw=true)

---

## 📋 Project Overview

A modern ChatBot UI application deployed using a comprehensive DevSecOps pipeline. This project demonstrates the implementation of security-first CI/CD practices, infrastructure as code, and cloud-native technologies.
This ChatBot App hadn't been develop by me, just check this repo to find the author : [Chatbot-UI](https://github.com/mckaywrigley/chatbot-ui)

## 🔒 Security Features

- Infrastructure security with AWS Security Groups
- Container security scanning with Trivy
- Code quality gates with SonarQube
- Dependency vulnerability checking
- Secure Docker image management
- Kubernetes security best practices

## 🛠️ Technology Stack

> Tools, languages, and other things that have been used.

<table>
  <tr>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/terraform-original.svg" width="48" height="48" alt="Terraform" />
      </a>
      <br>Terraform
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/jenkins-original.svg" width="48" height="48" alt="Jenkins" />
      </a>
      <br>Jenkins
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/git-original.svg" width="48" height="48" alt="Git" />
      </a>
      <br>Git
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/aws-original.svg" width="48" height="48" alt="AWS" />
      </a>
      <br>AWS
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/dynamodb-original.svg" width="48" height="48" alt="DynamoDB" />
      </a>
      <br>DynamoDB
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/react-original.svg" width="48" height="48" alt="React" />
      </a>
      <br>React
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech">
        <img src="./img/sonarqube-plain.svg" width="48" height="48" alt="SonarQube" />
      </a>
      <br>SonarQube
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech" >
        <img src="https://raw.githubusercontent.com/cncf/artwork/master/projects/kubernetes/icon/color/kubernetes-icon-color.svg" width="48" height="48" alt="Kubernetes" />
      </a>
      <br>Kubernetes
    </td>
    <td align="center" width="96"> 
      <a href="#macropower-tech" >
        <img src="./img/docker-original.svg" width="48" height="48" alt="Docker" />
      </a>
      <br>Docker
    </td>
    <td align="center"  width="96">
      <a href="#macropower-tech">
        <img src="./img/ubuntu-original.svg" width="48" height="48" alt="Ubuntu" />
      </a>
      <br>Ubuntu
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech" >
        <img src="./img/nodejs-original.svg" width="48" height="48" alt="Nodejs" />
      </a>
      <br>Node.js
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech" >
        <img src="./img/vscode-original.svg" width="48" height="48" alt="VSCode" />
      </a>
      <br>VSCode
    </td>
    <td align="center" width="96">
      <a href="#macropower-tech" >
        <img src="./img/trivy.svg" width="48" height="48" alt="Trivy" />
      </a>
      <br>Trivy
    </td>
  </tr>
</table>


## 📝 Prerequisites

- AWS Account
- Docker Hub Account
- Jenkins installed on EC2 Instance Server
- Java 17 installed
- Node.js 19 installed
- Docker installed
- Git installed
- Trivy installed
- OWASP Dependency Check installed
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
   terraform validate
   ```
![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initTerraform.png?raw=true)

   ```bash
   terraform plan
   terraform apply
   ```
![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/planTerraform.png?raw=true)


3. Connecting to instance via SSH

 - Already set a bash script in the EC2 instance's user data to install required tools (like Jenkins, Git, Java, Docker, etc.)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/instance-ssh.png?raw=true)

4. Configure Jenkins

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initJenkins1.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initJenkins2.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initJenkins3.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initJenkins4.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initJenkins5.png?raw=true)

   - Install required plugins
    Navigate to Manage Jenkins → Plugins → Available Plugins and install the following :


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
    
![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configJenkins1.png?raw=true)

   - Set up pipeline

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configJenkins2.png?raw=true)

   - Configure credentials

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configJenkins3.png?raw=true)

5. Configure SonarQube

   ```groovy
   Default-Credentials
   Username : admin
   Password : admin
   ```

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initSonar1.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initSonar2.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/initSonar3.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configSonar1.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configSonar2.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configSonar3.png?raw=true)

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configSonar4.png?raw=true)

6. Launching Pipeline Build

   - Build Success !

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/JenkinsPipelineSuccess.png?raw=true)


7. SonarQube Scan Analysis

   - Passed !

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/SonarScanSuccess.png?raw=true)


8. Chatbot-UI App Deployed !

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/chatbot1.png?raw=true)

9. Creating API Key on OpenAI

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/configOpenAIKey.png?raw=true)

10. Testing the app

![alt text](https://github.com/dimognetehem/OpenAI-ChatBot-UI/blob/main/images/chatbot2.png?raw=true)


It's Done !

## 📈 Future Improvements

- [ ] Implement GitOps practices
- [ ] Add monitoring and observability (Prometheus and Grafana)
- [ ] Enhance security scanning
- [ ] Implement auto-scaling
- [ ] Add disaster recovery

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

- **DIMOGNE TEHEM Emmanuel Franck**
- Role: DevOps/Software Engineer
- [GitHub](https://github.com/dimognetehem)

---
*This project was developed as part of a DevOps portfolio demonstration, showcasing modern cloud-native security practices and automation.*


