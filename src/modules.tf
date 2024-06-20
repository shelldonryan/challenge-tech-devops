module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = var.aws_vpc_name
  cidr = var.aws_vpc_cidr

  azs             = var.aws_vpc_azs
  private_subnets = var.aws_vpc_private_subnets
  public_subnets  = var.aws_vpc_public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.14.0"

  cluster_name    = var.aws_eks_name
  cluster_version = var.asw_eks_version

  cluster_endpoint_public_access           = true
  enable_cluster_creator_admin_permissions = true

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  eks_managed_node_groups = {
    default = {
      min_size     = 2
      max_size     = 2
      desired_size = 2

      instance_type = var.aws_eks_managed_node_groups_instance_types
    }
  }

}