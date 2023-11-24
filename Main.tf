provider "aws" {
    region = "us-east-1"
}
variable "ami_value" {
     description = "ami value" 
}

variable "instance_type" {
    type = map(string)
    description = "(optional) describe your variable"
    default = {
        dev = "t2.nano"
        stage = "t2.micro"
        prod = "t2.large"
    }
}
module "ec2_instance" {
  source  = "./modules"
  ami_value = var.ami_value
  instance_type = var.instance_type[terraform.workspace]
}


