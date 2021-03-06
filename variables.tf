variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
  }
variable "count" {
 default = 2
 }
variable "availability_zones" {
        default = ["us-east-1a", "us-east-1b"]
  }

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default = "10.0.2.0/24"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-759bc50a"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "/home/ubuntu/.ssh/id_rsa.pub"
}
