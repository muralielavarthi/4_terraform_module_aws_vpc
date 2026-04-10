# VPC Module

**Inputs:**

- vpc_cidr(Mandatory): User must supply, Ex: 10.20.1.0/24
- public_subnet_cidr(Mandatory): User must supply,Ex:10.20.1.0/24
- private_subnet_cidr(Mandatory): User must supply
- ami_id(Mandatory): User must supply
- instance_type(Mandatory): User must supply

**Outputs:**

- vpc_id: vpc_id will be displayed

**Resources Created:**

- 1 private subnet
- 1 public subnet
- 1 IGW
- 1 Elastic IP (public static ip)
- 1 NAT Gateway
- 1 EC2 in public and private subnet
- 1 Security group

**Note**

- vpc_id & sg_id: will be store ssm paramter store
