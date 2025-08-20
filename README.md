# Terraform Netlify Site Deployment

## Overview
This project demonstrates how to deploy a static website on **Netlify** using **Terraform**, with remote state management in **HCP Terraform**.

## Objectives
- Deploy a static frontend site on Netlify using Terraform.
- Configure HCP Terraform as the remote backend.
- Make the site unique (naming, design, or functionality).
- Document the setup clearly for easy replication.

## Setup Instructions

### Prerequisites
- Terraform installed (`>= 1.0`)
- Netlify account + API token
- HCP Terraform account & organization

### Steps
1. Clone this repo
2. Create a `terraform.tfvars` file with your values:
   ```hcl
   netlify_token = "your-netlify-token"
   site_name     = "your-unique-site-name"
   ```
3. Zip the site folder:
   ```bash
   cd netlify-site
   zip -r ../site.zip .
   ```
4. Run Terraform commands:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

### Outputs
After a successful apply, Terraform will print your **Netlify site URL**.
