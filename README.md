# 🚀 Static Website Deployment on AWS Using Terraform + GitHub Actions

This project demonstrates how to deploy a static website using **S3**, **CloudFront**, and **ACM (SSL)** — fully automated with **Terraform** and **GitHub Actions**.

You’ll get:
- ✅ A globally distributed HTTPS-secured static site
- ✅ Automated infrastructure as code (IaC)
- ✅ CI/CD pipeline triggered from GitHub

---

## 🔧 Tech Stack

- **Terraform** — Infrastructure as Code
- **AWS S3** — Static website hosting
- **AWS CloudFront** — Global CDN + HTTPS
- **AWS ACM** — Free SSL/TLS certificate
- **AWS Route 53** — DNS
- **GitHub Actions** — CI/CD pipeline

---

## 📁 Project Structure

├── .github/workflows/terraform.yml # CI/CD pipeline
├── terraform/
│ ├── main.tf # Core AWS resources
│ ├── outputs.tf # CDN + S3 URLs
│ ├── variables.tf # Inputs for reusability
│ ├── versions.tf # Providers + region setup
├── website/
│ └── index.html # Your static site
└── README.md


---

## 🧪 Live Demo (YouTube Tutorial)

📺 Watch the full walkthrough:  
https://www.youtube.com/watch?v=ClikeeqqVdg&t=87s
---

## ⚙️ CI/CD Workflow

The GitHub Actions workflow:
1. Runs on `main` branch push
2. Sets up Terraform
3. Executes `init`, `validate`, `plan`, and `apply`
4. Outputs the deployed URLs

---

## 🔐 Required GitHub Secrets

| Secret Name             | Description                                      |
|--------------------------|--------------------------------------------------|
| `AWS_ACCESS_KEY_ID`      | IAM user access key (with S3, CloudFront, ACM, Route 53 permissions) |
| `AWS_SECRET_ACCESS_KEY`  | IAM user secret key                             |
| `S3_BUCKET_NAME`         | Globally unique bucket name                     |
| `DOMAIN_NAME`            | e.g. `brierley.solutions` as shown in video     |
| `ZONE_ID`                | Route 53 hosted zone ID for your domain         |

---

## 🌍 How It Works

### ✅ S3
- Website files are uploaded as objects to a versioned bucket
- Static hosting is enabled

### ✅ ACM
- TLS cert is requested via DNS validation (automated)
- Route 53 handles the CNAME record for validation

### ✅ CloudFront
- Connects to S3 via OAI (origin access identity)
- HTTPS forced via ACM cert

### ✅ Route 53
- Adds an A record to point `DOMAIN_NAME` to CloudFront distribution

---

## 🖥️ Local Testing

You can also preview locally:

cd website
open index.html
