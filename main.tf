provider "aws" {
  region  = "ap-southeast-1"
  profile = "default"
}

module "key_pair" {
  source = "../../modules/terraform-aws-keypair"

  key_name   = var.key_name
  public_key = var.public_key

  tags = {
    Terraform = "keyvalue"
  }
}
