variable "aws_ami_id" {
  type = string
  nullable = false
  description = "AWS AMI ID"
}

variable "aws_instance_type" {
  type = string
  nullable = false
  default = "AWS instance type"
}

variable "env" {
  type = string
  nullable = false
  description = "AWS env"
}