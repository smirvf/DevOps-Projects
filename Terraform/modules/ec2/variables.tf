variable "instance_type" {
  type        = string                     # The type of the variable, in this case a string
  default     = "t3.micro"                 # Default value for the variable
  description = "The type of EC2 instance" # Description of what this variable represents
}

variable "ami_id" {
  type        = string                     # The type of the variable, in this case a string
  default     = "ami-0a716d3f3b16d290c"                 # Default value for the variable
  description = "The default ubuntu ami id for t3.micro eu-north-1 ec2 instance" # Description of what this variable represents
}

locals {
  instance_type = "t3.micro"
  instance_ami = "ami-0a716d3f3b16d290c"
}