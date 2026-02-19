## Graded Assignment on Deploying a MERN Application on AWS


## Overall Architecture

            ┌──────────────────────────────┐
            │            Internet          │
            └──────────────┬───────────────┘
                           │
                    Internet Gateway
                           │
                ┌──────────▼──────────┐
                │        AWS VPC      │
                │                     │
                │  ┌───────────────┐  │
                │  │ Public Subnet │  │
                │  │               │  │
                │  │  Web EC2      │  │
                │  │  (MERN App)   │  │
                │  └───────┬───────┘  │
                │          │          │
                │          │ NAT GW   │
                │          ▼          │
                │  ┌───────────────┐  │
                │  │ Private Subnet│  │
                │  │               │  │
                │  │  DB EC2       │  │
                │  │  (MongoDB)    │  │
                │  └───────────────┘  │
                │                     │
                │  Security Groups    │
                │  IAM Roles          │
                └──────────┬──────────┘
                           │
                           ▼
                    Terraform Outputs
                   (Web Server Public IP)

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

## Step 4 — Apply

   terraform apply


## Overall Architecture Ansible

## Ansible Project Structure

    ansible-travelmemory/
    │
    ├── inventory.ini
    ├── ansible.cfg
    ├── playbook.yml
    │
    ├── group_vars/
    │   └── all.yml
    │
    ├── roles/
    │   ├── web/
    │   │   └── tasks/main.yml
    │   └── db/
    │       └── tasks/main.yml

## Step 1 — Install Ansible

  pip install ansible


## Step 2 — Run Ansible

  ansible-playbook playbook.yml

## Step 3 - Application

<img width="1910" height="978" alt="image" src="https://github.com/user-attachments/assets/ebcf15bb-2b7a-4918-9b8c-e358085d036a" />





