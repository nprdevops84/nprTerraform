#####################################
# VARIABLES
####################################

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}


#####################################
# PROVIDERS
####################################

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "us-east-1"
}


#####################################
# RESOURCE
####################################

resource "aws_instance" "test1" {
  ami           = "ami-04763b3055de4860b"
  instance_type = "t2.micro"
}

#####################################
# OUTPUT
####################################

output "aws_instance_public_dns" {
  value = "${aws_instance.test1.public_dns}"
}
