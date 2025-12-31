🎬 NetflixOps – Netflix-Style DevOps Streaming Platform

NetflixOps is a Netflix-style movie streaming platform built to demonstrate real-world DevOps practices including infrastructure automation, CI/CD pipelines, containerization, and Kubernetes orchestration — all cost-optimized using AWS Free Tier.

This project focuses on DevOps engineering, not UI cloning.

🚀 Project Highlights

End-to-end CI/CD automation

Infrastructure as Code using Terraform

Configuration management using Ansible

Containerized microservices with Docker

Kubernetes orchestration using lightweight k3s

Jenkins CI/CD pipeline

Real movie data using TMDB API

Fully cost-optimized (free tier) setup

🏗 High-Level Architecture
Developer
   |
   |  (Git Push)
   v
GitHub Repository
   |
   |  (Webhook)
   v
Jenkins CI/CD Pipeline
   |
   |-- Build Docker Images
   |-- Push Images to DockerHub
   |-- Deploy to Kubernetes
   v
Kubernetes (k3s)
   |
   |-- Frontend (Netflix UI)
   |-- Backend (TMDB API Service)
   v
User Browser 🎬

🛠 Technologies Used
Category	Tools
Cloud	AWS (EC2 – Free Tier)
OS	Linux (Ubuntu)
IaC	Terraform
Config Mgmt	Ansible
CI/CD	Jenkins
Containers	Docker
Orchestration	Kubernetes (k3s)
API	TMDB API
Version Control	Git & GitHub
📁 Project Structure
NetflixOps/
├── ansible/
│   ├── inventory
│   └── setup.yml
├── app/
│   ├── frontend/
│   │   └── index.html
│   └── backend/
│       ├── app.py
│       └── requirements.txt
├── docker/
│   ├── frontend.Dockerfile
│   └── backend.Dockerfile
├── jenkins/
│   └── Jenkinsfile
├── k8s/
│   ├── frontend.yaml
│   └── backend.yaml
├── terraform/
│   └── main.tf
├── docs/
│   └── architecture.png
├── .gitignore
└── README.md

⚙️ How the CI/CD Pipeline Works

Developer pushes code to GitHub

Jenkins pipeline is triggered

Docker images are built

Images are pushed to DockerHub

Kubernetes deployments are updated

Application is live with zero downtime

🎥 Application Flow

Frontend displays Netflix-style UI

Backend fetches movie data from TMDB API

Movies and posters are dynamically rendered

Kubernetes ensures:

Self-healing

Scalability

High availability

🔐 Security & Best Practices

No credentials committed to Git

TMDB API key injected via environment variables

Terraform state & providers excluded using .gitignore

Passwordless SSH & sudo access

Clean separation of concerns

💸 Cost Optimization Strategy

AWS EC2 Free Tier (t2.micro)

Lightweight Kubernetes (k3s instead of EKS)

No NAT Gateway or RDS

Infrastructure destroyed after demo

DockerHub free public repositories

💡 Total cost: ~₹0 if resources are terminated after use

🧪 Demo Scenarios

Push code → Jenkins deploys automatically

Delete a pod → Kubernetes self-heals

Scale replicas → App stays online

TMDB API fetches live movie data

🧠 What This Project Demonstrates

✔ Real DevOps workflow
✔ Production-style automation
✔ Troubleshooting skills
✔ Cost-aware architecture
✔ CI/CD maturity

🏆 Interview Ready Summary

“I built NetflixOps, a Netflix-style streaming platform using Docker and Kubernetes, automated with Jenkins CI/CD, and provisioned via Terraform and Ansible on AWS Free Tier. The platform supports automated deployments, self-healing and scalable microservices using real TMDB movie data.”

📌 Future Enhancements

Horizontal Pod Autoscaling (HPA)

Ingress Controller (NGINX)

Monitoring (Prometheus & Grafana)

HTTPS with TLS

Multi-environment pipelines (dev / prod)

👤 Author

Rahul Hari Kumar
DevOps Engineer
GitHub: https://github.com/DevRahul16
