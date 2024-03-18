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

4. Configure variables
Terraform Cloud supports two types of variables: environment variables and Terraform variables. Either type can be marked as sensitive, which prevents them from being displayed in the Terraform Cloud web UI and makes them write-only.
Set two environment variables: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY, set the values that you used in Project 16. These credentials will be used to provision your AWS infrastructure by Terraform Cloud.
After you have set these 2 environment variables – your Terraform Cloud is all set to apply the codes from GitHub and create all necessary AWS resources.

5. Now it is time to run our Terraform scripts, but in our previous project which was project 18, we talked about using Packer to build our images, and Ansible to configure the infrastructure, so for that we are going to make few changes to our our existing repository from Project 18.

The files that would be Added is;
* AMI: for building packer images
* Ansible: for Ansible scripts to configure the infrastructure.

Before you proceed ensure you have the following tools installed on your local 
machine;
* packer
* Ansible
Refer to this [repository](https://github.com/dareyio/PBL-project-19) for guidance on how to refactor your environment to meet the new changes above and ensure you go through the README.md file.

6. Run `terraform plan` and `terraform apply` from web console
Switch to "Runs" tab and click on "Queue plan manualy" button. If planning has been successfull, you can proceed and confirm Apply – press "Confirm and apply", provide a comment and "Confirm plan"
Check the logs and verify that everything has run correctly. Note that Terraform Cloud has generated a unique state version that you can open and see the codes applied and the changes made since the last run.

7. Test automated terraform plan
By now, you have tried to launch plan and apply manually from Terraform Cloud web console. But since we have an integration with GitHub, the process can be triggered automatically. Try to change something in any of .tf files and look at "Runs" tab again – plan must be launched automatically, but to apply you still need to approve manually. Since provisioning of new Cloud resources might incur significant costs. Even though you can configure "Auto apply", it is always a good idea to verify your plan results before pushing it to apply to avoid any misconfigurations that can cause ‘bill shock’.
