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

```
module "vpc" {
  source                  = "git::https://github.com/muralielavarthi/terraform_module_aws_vpc.git"
  vpc_cidr                = "10.0.0.0/16"
  public_subnet_cidr_1a   = "10.0.1.0/24"
  private_subnet_cidr_1a  = "10.0.2.0/24"
  public_subnet_cidr_1b   = "10.0.3.0/24"
  private_subnet_cidr_1b  = "10.0.4.0/24"
  database_subnet_cidr_1a = "10.0.5.0/24"
  database_subnet_cidr_1b = "10.0.6.0/24"
}
```
