variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "ec2_instance_id" {
  type = string
}
