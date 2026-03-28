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
  default     = "ami-0c02fb55956c7d316"
}