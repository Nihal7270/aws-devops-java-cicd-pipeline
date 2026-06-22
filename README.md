# AWS DevOps CI/CD Pipeline for Java WAR Application

## Project Overview

This project is about building an end-to-end CI/CD pipeline for deploying a Java WAR-based web application on AWS using **Terraform, Jenkins, Ansible, Tomcat, S3, Application Load Balancer, Prometheus, and Grafana**.

The main idea of this project is to connect infrastructure provisioning, application deployment, and monitoring in one workflow instead of doing everything manually. I wanted to make it more like a real DevOps setup where infrastructure is created first, then Jenkins handles the build part, Ansible takes care of server configuration and deployment, and monitoring is added on top of it.

### In this project, I am automating:

* Infrastructure provisioning using Terraform
* Jenkins server setup for CI/CD pipeline execution
* Tomcat server setup and configuration using Ansible
* Storing build artifacts in Amazon S3
* Application access through AWS Application Load Balancer
* Monitoring setup using Prometheus and Grafana

---

## Current Progress

### Completed

### 1) Infrastructure Provisioning using Terraform

So far I have provisioned the main AWS infrastructure using Terraform, including:

* VPC
* 2 public subnets
* Internet Gateway and route table configuration
* Security groups for Jenkins, Tomcat, Monitoring, and ALB
* 4 EC2 instances:

  * Jenkins/Ansible server
  * Tomcat server 1
  * Tomcat server 2
  * Monitoring server
* S3 bucket for artifact storage
* Application Load Balancer with target group and listener

### 2) Jenkins Server Setup

I configured the Jenkins server with the required tools needed for the pipeline:

* Jenkins
* Git
* Maven
* Ansible
* AWS CLI

### 3) Ansible Configuration

I also configured Ansible from the Jenkins server so it can connect to the Tomcat servers and manage them remotely.

### 4) Tomcat Automation

Tomcat installation on both application servers has been automated using Ansible playbooks.
This includes installing Java, setting up Tomcat, and starting the Tomcat service on both servers.

---

## In Progress

Right now, I’m working on the next phase of the project which includes:

* WAR artifact deployment through Jenkins pipeline
* Uploading the WAR artifact to S3 from Jenkins
* Automated application deployment to both Tomcat servers
* Prometheus and Grafana monitoring integration
* Slack notifications for build/deployment status

---

## Architecture Flow

The current project flow looks like this:

**GitHub → Jenkins Build → WAR Artifact → S3 → Ansible Deployment → Tomcat Servers → ALB → Monitoring with Grafana/Prometheus**

---

## Tools Used

### DevOps / Automation

* **Terraform** – for infrastructure provisioning
* **Jenkins** – for CI/CD pipeline automation
* **Ansible** – for server configuration and deployment automation

### Application / Deployment

* **Apache Tomcat** – for hosting the Java WAR application
* **Amazon S3** – for storing WAR artifacts
* **AWS Application Load Balancer** – for distributing traffic across application servers

### Monitoring / Source Control

* **Prometheus & Grafana** – for monitoring and visualization
* **GitHub** – for source code and project version control

---

## Project Status

This project is being built step by step in phases, not all at once.
At this stage, the infrastructure provisioning part and Tomcat automation are completed. The next main part is to connect Jenkins with the Java application repository, build the WAR file, push it to S3, and deploy it automatically to the Tomcat servers using Ansible.

After that, I’ll complete the monitoring setup and document the full workflow properly with screenshots and architecture details.

