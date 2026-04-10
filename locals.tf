locals {
  project     = "calculator"
  environment = "dev"
  application = "web"
  owner       = "elavarthi"
}

locals {
  bastion_host_name= "{local.project}-{local.environment}-{local.application}-bastion-host"
}

locals {
 instance_public_subnet_name = "{local.project}-{local.environment}-{local.application}-instance-public-subnet"
}

locals {
  instanc_private_subnet_name= "{local.project}-{local.environment}-{local.application}-instance-private-subnet"
}