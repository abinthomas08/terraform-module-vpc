variable "aws_region" {

    description = "aws region to deploy resource"
    type=string
    default = "us-east-1"
  
}

variable "environment_name" {
  description = "environment naem used in resource names and tags "
  type = string
  default = "dev"
}
variable "vpc_cidr" {
  description = "CIDR block for the vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "tags" {
    description = "Global tags to apply to all resources "
    type = map(string)
    default = {
      "Terraform" = "true"
    }
  
}

variable "subnet_newbits" {
    description = "Number of new bits to add vpc cidr to generate subnets "
    type = number
    # default = 8
}