# VPC Module

**Inputs:**

- vpc_cidr(Mandatory): User must supply
- public_subnet_cidr_1a(Mandatory): User must supply
- public_subnet_cidr_1b(Mandatory): User must supply
- private_subnet_cidr_1b(Mandatory): User must supply
- private_subnet_cidr_1a(Mandatory): User must supply
- database_subnet_cidr_1a(Mandatory): User must supply
- database_subnet_cidr_1b(Mandatory): User must supply

**Outputs:**

- vpc_id: vpc_id will be displayed
- subnet_ids : subnet_ids will be displayed

**Resources Created:**

- private subnet in 1a & 1b
- public subnet in 1a & 1b
- database subnet in 1a & 1b
- Elastic IP and NAT Gateway in 1a & 1b

**Note**

- vpc_id & subnet_ids: will be stored in ssm paramter store
