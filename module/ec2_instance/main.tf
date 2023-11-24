provider "aws" {
    region = "us-east-1"
}
variable "ami_value" {
    description = "value"
}
variable "instance_type" {
    description = "value"
  
}

resource "aws_instance" "manu" {
    ami = var.ami_value
    instance_type = var.instance_type
}
