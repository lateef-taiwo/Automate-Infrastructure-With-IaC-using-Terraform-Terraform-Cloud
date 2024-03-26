region = "us-east-1"

vpc_cidr = "172.20.0.0/24"

enable_dns_support = "true"

enable_dns_hostnames = "true"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "Production"


ami-web = "ami-05f3374627f80fccb"

ami-bastion = "ami-09334091eeccd81b9"

ami-nginx = "ami-0b54d415d905f0e7d"

ami-sonar = "ami-01978e4126bbfd917"

keypair = "servers"

# Ensure to change this to your acccount number
account_no = "005654795190"

master-username = "savvytek"

master-password = "devops123"


tags = {
  Owner-Email     = "taiwolateef55@gmail.com"
  Managed-By      = "terraform"
  Billing-Account = "005654795190"
} 

