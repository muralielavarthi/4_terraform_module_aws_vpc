locals {
  project     = "calculator"
  environment = "dev"
  application = "web"
  owner       = "elavarthi"
}

locals {
  bastion_host_name= "{local.project}-{local.environment}-{local.application}-bastion-host"
}