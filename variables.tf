variable "env" {
  type = string
}

variable "remote_tfstate_encrypt" {
  type = bool
}

variable "image_id" {
  type = map

  default = {
    us-east-1 = "ami-08f3d892de259504d"
    us-east-2 = "ami-016b213e65284e9c9"
  }
}
variable "region" { 
  type = string	
}

variable "ec2_keypair" {
  type = map

  default = {
    us-east-1 = "mac-keypair"
    us-east-2 = "mike"
  }
}

variable "ec2_type" {
  type = string

}
