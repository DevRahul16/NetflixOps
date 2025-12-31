# 🎬 NetflixOps – Netflix-Style DevOps Streaming Platform

> **NetflixOps** is a Netflix-style streaming platform built to demonstrate **real-world DevOps engineering** using **AWS, Linux, Terraform, Ansible, Docker, Kubernetes (k3s), and Jenkins** — fully **cost-optimized on AWS Free Tier**.

🔹 Focus: **DevOps automation, CI/CD, and infrastructure**, not UI cloning  
🔹 Uses **TMDB API** for real movie data  
🔹 Designed to impress **recruiters & interviewers**

---

## 🔗 Quick Navigation

- Architecture Overview  
- Tech Stack  
- Project Structure  
- Step-by-Step Execution  
- CI/CD Pipeline Flow  
- Cost Optimization  
- Demo Scenarios  
- Interview Summary  

---

## 🏗 Architecture Overview

```
Developer
   |
   | git push
   v
GitHub Repository
   |
   | Jenkins Webhook
   v
Jenkins CI/CD
   |
   | Docker Build & Push
   v
DockerHub
   |
   | kubectl apply
   v
Kubernetes (k3s)
   |
   | Frontend + Backend
   v
User Browser 🎬
```

---

## 🛠 Tech Stack

| Category | Tools |
|--------|------|
| Cloud | AWS (EC2 – Free Tier) |
| OS | Linux (Ubuntu) |
| IaC | Terraform |
| Config Mgmt | Ansible |
| CI/CD | Jenkins |
| Containers | Docker |
| Orchestration | Kubernetes (k3s) |
| API | TMDB API |
| SCM | Git & GitHub |

---

## 📁 Project Structure

```
NetflixOps/
├── ansible/
│   ├── inventory
│   └── setup.yml
├── app/
│   ├── frontend/index.html
│   └── backend/
│       ├── app.py
│       └── requirements.txt
├── docker/
│   ├── frontend.Dockerfile
│   └── backend.Dockerfile
├── jenkins/Jenkinsfile
├── k8s/
│   ├── frontend.yaml
│   └── backend.yaml
├── terraform/main.tf
├── docs/architecture.png
├── .gitignore
└── README.md
```

---

## 🚀 Step-by-Step Execution

### 1️⃣ Clone Repository

```bash
git clone https://github.com/DevRahul16/NetflixOps.git
cd NetflixOps
```

---

### 2️⃣ Provision EC2 using Terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

---

### 3️⃣ Configure Server using Ansible

```bash
cd ansible
ansible-playbook -i inventory setup.yml --become
```

---

### 4️⃣ Access Jenkins

```
http://<EC2_PUBLIC_IP>:8080
```

Get admin password:
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

---

### 5️⃣ DockerHub Login (on EC2)

```bash
docker login
```

---

### 6️⃣ Jenkins Pipeline Execution

- Create **Pipeline**
- Select **Pipeline from SCM**
- Repo URL:
```
https://github.com/DevRahul16/NetflixOps.git
```
- Script Path:
```
jenkins/Jenkinsfile
```

---

### 7️⃣ Kubernetes Verification

```bash
kubectl get pods
kubectl get svc
```

Expose frontend:
```bash
kubectl expose deployment frontend --type=NodePort --port=80
```

---

### 8️⃣ Access NetflixOps App

```
http://<EC2_PUBLIC_IP>:<NODE_PORT>
```

---

## 🔄 CI/CD Pipeline Flow

```
Git Push
   ↓
Jenkins Trigger
   ↓
Docker Build
   ↓
DockerHub Push
   ↓
kubectl apply
   ↓
Rolling Update
```

---

## 💸 Cost Optimization

- EC2 Free Tier
- k3s instead of EKS
- No NAT Gateway
- No RDS
- DockerHub Free

Destroy infra after demo:
```bash
terraform destroy
```

---

## 🧪 Demo Scenarios

✔ CI/CD auto deploy  
✔ Kubernetes self-healing  
✔ Zero downtime updates  
✔ Live TMDB API data  

---

## 🧠 Interview Summary

> *NetflixOps is a Netflix-style streaming platform built with Docker, Kubernetes, Jenkins CI/CD, Terraform, and Ansible on AWS Free Tier. It demonstrates automated deployments, self-healing infrastructure, and real-world DevOps practices using TMDB APIs.*

---

## 👤 Author

**Rahul Kumar**  
DevOps Engineer  
GitHub: https://github.com/DevRahul16
