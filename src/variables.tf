variable "aws_region" {
  description = "region begin used to create aws resource"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "name of my vpc module that was created"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "cidr (Classless Inter-Domain Routing) of the vpc"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "zones of the vpc"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "private subnets of the vpc"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "public subnets of the vpc"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "name of my eks module that was created"
  type        = string
  nullable    = false
}

variable "asw_eks_version" {
  description = "Version used in eks module"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Types of instances used in the cluster"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Tags that will be used in the terraform project"
  type        = map(any)
  nullable    = false
}