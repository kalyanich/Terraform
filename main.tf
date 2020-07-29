provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-rk-ritvik"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = "false"
  }

}

resource "aws_instance" "test" {
  ami = var.image_id[var.region]
  instance_type = var.ec2_type
  key_name = var.ec2_keypair[var.region]

}
