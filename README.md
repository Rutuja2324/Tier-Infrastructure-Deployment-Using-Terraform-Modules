# Tier-Infrastructure-Deployment-Using-Terraform-Modules
Project 3: 3-Tier Infrastructure Deployment Using Terraform Modules
Author
Rutuja Kakuste
📌 Objective
Design and deploy a complete 3-tier web application architecture on AWS using Terraform modules. The infrastructure is modular, scalable, and built using Infrastructure as Code (IaC) best practices.

🗂️ Project Structure
project-3-terraform-3tier/ │ ├── modules/ │ ├── vpc/ │ ├── web-tier/ │ ├── app-tier/ │ └── database/ │ ├── main.tf ├── variables.tf ├── outputs.tf ├── terraform.tfvars └── README.md
🏗️ Architecture
VPC Tier (Networking Layer):

Custom VPC with public & private subnets across 2 Availability Zones
Internet Gateway for public subnets
NAT Gateway for private subnets
Route Tables, Security Groups, and NACLs
Web Tier (Public Subnet):

EC2 instance with Nginx and HTML registration form (via User Data or Ansible)
App Tier (Private Subnet):

EC2 instance running submit.php to receive and store form data
Connects to RDS securely using a provisioner script or Ansible
Database Tier (Private Subnet):

Amazon RDS (MySQL/PostgreSQL) instance
Configured with security groups and private subnet group
🛠️ Tools & Technologies
Terraform v1.x
AWS EC2, RDS, VPC, NAT Gateway, IGW
Ansible or Terraform provisioners
Git & GitHub
🚀 Deployment Steps
Step 1: Clone the Repository
git clone https://github.com/Rutuja2324/Tier-Infrastructure-Deployment-Using-Terraform-Modules.git
cd Tier-Infrastructure-Deployment-Using-Terraform-Modules

Step 2: Initialize Terraform

terraform init

Step 3: Plan the Infrastructure

terraform plan

Step 4: Apply to Deploy

terraform apply

Step 5: Destroy Resources (Optional)

terraform destroy

🔐 Security Considerations

    RDS security group allows access only from App Tier EC2 instance

    App Tier EC2 is in a private subnet (no public IP)

    Web Tier EC2 uses Security Groups to allow HTTP/SSH traffic

    Minimal IAM permissions assigned to resources

🖼️ Screenshots (Place in /screenshots folder)

    ✅ Terraform Plan and Apply success

    ✅ AWS Console: VPC, EC2, RDS

    ✅ Nginx form loaded in browser

    ✅ Data inserted into RDS

    ✅ submit.php running properly in app-tier EC2

📦 Deliverables

    ✅ Modular Terraform Code

    ✅ Architecture Diagram

    ✅ Screenshots of working setup

    ✅ This README.md file

📘 How It Works

    Web Tier EC2 runs Nginx with a form

    Submits data to submit.php hosted on App Tier EC2 (private)

    App Tier EC2 inserts form data into RDS MySQL/PostgreSQL

    All communication happens within the secure VPC

📎 License

This project is licensed under the MIT License.
 Author

Rutuja Kakuste
🔗 GitHub


---

Let me know if you'd like:
- A ZIP file of the recommended folder structure
- Screenshot image placeholders or dummy files
- A rendered architecture diagram image
- Help pushing this to your GitHub repo

I'll generate or organize it for you right away.
