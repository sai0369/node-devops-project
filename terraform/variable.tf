variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "AWS key pair name"
}

variable "ami" {
  description = "AMI ID for EC2"
  default     = "aami-0ec10929233384c7f"
}