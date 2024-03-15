# Automate-Infrastructure-With-IaC-using-Terraform-Terraform-Cloud
In this project we will be using Packer to build our images, and Ansible to configure the Infrastructure.

### Migrate your .tf codes to Terraform Cloud
Le us explore how we can migrate our codes to Terraform Cloud and manage our AWS infrastructure from there:
1. Create a Terraform Cloud account

    Follow this [link](https://app.terraform.io/signup/account), create a new account, verify your email and you are ready to start

    Most of the features are free, but if you want to explore the difference between free and paid plans – you can check it on [this page](https://www.hashicorp.com/products/terraform/pricing).

2. Create an organization
Select "Start from scratch", choose a name for your organization and create it.
3. Configure a workspace

    Understand the difference between version control workflow, CLI-driven workflow and API-driven workflow and other configurations that we are going to implement.
We will use version control workflow as the most common and recommended way to run Terraform commands triggered from our git repository.
Create a new repository in your GitHub and call it terraform-cloud, push your Terraform codes developed in the previous projects to the repository.
Choose version control workflow and you will be prompted to connect your GitHub account to your workspace – follow the prompt and add your newly created repository to the workspace.

Move on to "Configure settings", provide a description for your workspace and leave all the rest settings default, click "Create workspace".
