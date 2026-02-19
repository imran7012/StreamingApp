## Graded Assignment on Deploying a MERN Application on AWS


## Overall Architecture

    AWS
   │
   ├── VPC
   │   ├── Public Subnet → Web EC2 (MERN App)
   │   └── Private Subnet → DB EC2 (MongoDB)
   │
   ├── Internet Gateway → Public Internet Access
   ├── NAT Gateway → Private subnet outbound access
   │
   ├── Security Groups
   ├── IAM Roles
   │
   └── Outputs → Web Server Public IP

---

## Step 1 — Install & Configure Tools
 
 Terraform

 AWS CLI

 Git


<img width="885" height="112" alt="image" src="https://github.com/user-attachments/assets/cbfffa51-98cd-4878-ad23-10863837c751" />

## Step 2 — Configure AWS CLI

<img width="680" height="141" alt="image" src="https://github.com/user-attachments/assets/43faccbc-2e1b-46b9-acf3-8b57295b5e78" />

---


## Terraform Project Structure (Module Format):

    terraform-travelmemory/
   │
   ├── main.tf
   ├── variables.tf
   ├── outputs.tf
   ├── terraform.tfvars
   │
   ├── modules/
   │   ├── vpc/
   │   ├── ec2/
   │   ├── security/
   │   └── iam/

<img width="715" height="782" alt="image" src="https://github.com/user-attachments/assets/29e817a9-adbf-4bfe-8a92-e5ecbd71e76c" />

---

## How to Deploy:

 ## Step 1 — Initialize

   terraform init
   
 ## Step 2 — Validate

   terraform validate

 ## Step 3 — Plan

   terraform plan






