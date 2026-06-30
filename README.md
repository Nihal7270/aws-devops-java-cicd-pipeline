# 🚀 End-to-End AWS DevOps CI/CD Pipeline for Java WAR Application

<p align="center">
  <img src="docs/screenshots/12-project-architecture.png" alt="Project Architecture" width="100%">
</p>

<p align="center">

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-D24939)
![Ansible](https://img.shields.io/badge/Ansible-Automation-000000)
![Maven](https://img.shields.io/badge/Maven-Build-C71A36)
![Tomcat](https://img.shields.io/badge/Tomcat-Java-F8DC75)
![Amazon S3](https://img.shields.io/badge/Amazon-S3-569A31)
![ALB](https://img.shields.io/badge/Application-Load_Balancer-FF9900)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C)
![Grafana](https://img.shields.io/badge/Grafana-Dashboard-F46800)

</p>

---

# 📌 Project Overview

This project demonstrates an **end-to-end DevOps CI/CD pipeline** for deploying a **Java WAR-based web application** on AWS.

The entire workflow is automated—from provisioning AWS infrastructure to building, storing, deploying, load balancing, and monitoring the application—using Infrastructure as Code (IaC) and DevOps automation tools.

The project integrates **Terraform**, **Jenkins**, **Maven**, **Ansible**, **Amazon S3**, **Application Load Balancer (ALB)**, **Prometheus**, and **Grafana** into a single automated deployment pipeline.

---

# 🎯 Project Objectives

- Provision AWS infrastructure using Terraform
- Automate infrastructure deployment using reusable Terraform modules
- Configure Jenkins as the CI/CD server
- Build Java WAR applications using Maven
- Store build artifacts in Amazon S3
- Automate deployment using Ansible
- Deploy applications to multiple Apache Tomcat servers
- Distribute traffic using AWS Application Load Balancer
- Monitor infrastructure using Prometheus and Grafana

---

# 🏗 Project Architecture

<p align="center">
<img src="docs/screenshots/12-project-architecture.png" width="100%">
</p>

---

# ⚙️ Tech Stack

| Category | Technologies |
|-----------|--------------|
| Cloud | AWS |
| Infrastructure as Code | Terraform |
| CI/CD | Jenkins |
| Build Tool | Maven |
| Configuration Management | Ansible |
| Application Server | Apache Tomcat |
| Artifact Storage | Amazon S3 |
| Load Balancer | AWS Application Load Balancer |
| Monitoring | Prometheus, Grafana |
| Version Control | Git & GitHub |

---

# ☁️ AWS Infrastructure

The infrastructure is provisioned entirely using Terraform modules.

### Network

- VPC
- 2 Public Subnets
- Internet Gateway
- Route Tables
- Route Table Associations

### Security

- Jenkins Security Group
- Tomcat Security Group
- Monitoring Security Group
- ALB Security Group

### Compute

- Jenkins / Ansible Server
- Tomcat Server 1
- Tomcat Server 2
- Monitoring Server

### Storage

- Amazon S3 Artifact Bucket

### Load Balancing

- Application Load Balancer
- Target Group
- HTTP Listener

---

# 📂 Project Structure

```text
aws-devops-java-cicd-pipeline
│
├── terraform
│   ├── environments
│   │   └── dev
│   └── modules
│       ├── vpc
│       ├── security-group
│       ├── ec2
│       ├── s3
│       └── alb
│
├── ansible
│   ├── inventory
│   └── playbooks
│
├── jenkins
│   ├── Jenkinsfile
│   └── scripts
│
├── monitoring
│
├── docs
│   └── screenshots
│
└── README.md
```

---

# 🔄 CI/CD Workflow

```text
Developer
      │
      ▼
GitHub Repository
      │
      ▼
Jenkins Pipeline
      │
      ▼
Checkout Source Code
      │
      ▼
Build WAR (Maven)
      │
      ▼
Upload Artifact to Amazon S3
      │
      ▼
Ansible Playbook
      │
      ▼
Deploy WAR to Tomcat Servers
      │
      ▼
Application Load Balancer
      │
      ▼
Users
      │
      ▼
Prometheus + Grafana Monitoring
```

---

# ✅ Project Status

## Infrastructure Provisioning

- [x] Modular Terraform Project Structure
- [x] AWS VPC
- [x] Public Subnets
- [x] Internet Gateway
- [x] Route Tables
- [x] Security Groups
- [x] EC2 Instances
- [x] Amazon S3 Bucket
- [x] Application Load Balancer

## CI/CD Pipeline

- [x] Jenkins Installation
- [x] Git Integration
- [x] Maven Build Automation
- [x] Jenkins Pipeline
- [x] WAR Artifact Generation
- [x] Upload WAR Artifact to Amazon S3

## Configuration Management

- [x] SSH Configuration
- [x] Ansible Inventory
- [x] Automated Apache Tomcat Installation
- [x] Automated WAR Deployment
- [x] Multi-Server Deployment

## Application Deployment

- [x] Java WAR Application Deployment
- [x] Load Balancing Across Two Tomcat Servers
- [x] Application Accessible Through ALB

## Monitoring

- [x] Prometheus Installation
- [x] Node Exporter Configuration
- [x] Grafana Dashboard
- [x] Infrastructure Monitoring

---

# 📸 Project Screenshots

## Architecture Diagram

<img src="docs/screenshots/12-project-architecture.png">

---

## Terraform Project Structure

<img src="docs/screenshots/01-terraform-project-structure.png">

---

## Terraform Infrastructure Deployment

<img src="docs/screenshots/02-terraform-apply-output.png">

---

## EC2 Instances

<img src="docs/screenshots/03-ec2-instances-running.png">

---

## VPC Network

<img src="docs/screenshots/04-vpc-network-setup.png">

---

## Amazon S3 Artifact Bucket

<img src="docs/screenshots/05-s3-artifact-bucket.png">

---

## Application Load Balancer

<img src="docs/screenshots/06-alb-created.png">

---

## Jenkins Pipeline

<img src="docs/screenshots/07-jenkins-pipeline-success.png">

---

## Ansible Deployment

<img src="docs/screenshots/08-ansible-deploy-success.png">

---

## Application Running via ALB

<img src="docs/screenshots/09-application-via-alb.png">

---

## Grafana Dashboard

<img src="docs/screenshots/10-grafana-dashboard.png">

---

## Prometheus Targets

<img src="docs/screenshots/11-prometheus-targets.png">

---

# 🐞 Challenges & Learning

Working on this project provided practical experience in building a complete DevOps workflow and solving real-world deployment challenges.

Some key takeaways include:

- Designing reusable Terraform modules for better scalability and maintainability.
- Configuring secure communication between Jenkins, Tomcat servers, Monitoring server, and the Application Load Balancer.
- Integrating GitHub, Jenkins, Maven, Amazon S3, and Ansible into a complete CI/CD pipeline.
- Automating Apache Tomcat installation and WAR deployment using Ansible playbooks.
- Configuring Application Load Balancer target groups and health checks.
- Setting up Prometheus and Node Exporter to collect infrastructure metrics.
- Building Grafana dashboards to visualize system performance.
- Troubleshooting Jenkins pipeline failures, SSH connectivity issues, ALB health checks, deployment errors, and monitoring configuration.

This project significantly improved my understanding of how modern DevOps tools work together in a production-like deployment workflow.

---

# 🚀 Future Improvements

- Configure HTTPS using AWS Certificate Manager (ACM)
- Integrate Amazon Route 53
- Provision Terraform Remote Backend using Amazon S3 and DynamoDB
- Implement Auto Scaling Group (ASG)
- Store application secrets using AWS Secrets Manager
- Implement Blue-Green Deployment Strategy

---

# 👨‍💻 Author

**Nihal Allugula**

- GitHub: https://github.com/Nihal7270
- LinkedIn: https://www.linkedin.com/in/nihal-allugula

---

# ⭐ Support

If you found this project helpful, consider giving the repository a ⭐.
