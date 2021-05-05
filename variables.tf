variable "aws_region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "name" {
  description = "Unique name of the deployment"
}

variable "web_node_count" {
  description = "number of worker nodes"
  default     = "4"
}

variable "dns_id" {
  description = "ID of aws dns zone"
}

variable "instance_type" {
  description = "instance size to be used for worker nodes"
  default     = "t2.small"
}

variable "web_subnet_count" {
  description = "number of subnets to be used for working nodes"
  default     = "2"
}

variable "ssh_user" {
  description = "default ssh user to get access to an instance"
  default     = "centos"
}

variable "pub_key" {
  description = "the public key to be used to access the bastion host and ansible nodes"
  default     = "joestack"
}

variable "dns_domain" {
  description = "DNS domain suffix"
  default     = "joestack.xyz"
}

variable "network_address_space" {
  description = "CIDR for this deployment"
  default     = "192.168.0.0/16"
}

variable "ami_id" {
  description = "amazon machine image id"
  # CentOS 8 Stream
  # default     = "ami-073a8e22592a4a925" 
  # CentOS 8
  default     = "ami-0e337c7f9752d9d34"
}

locals {
  mod_az = length(
    split(",", join(", ", data.aws_availability_zones.available.names)),
  )
}

