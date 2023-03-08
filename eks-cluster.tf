data "aws_caller_identity" "current" {}

locals {
    iam_role_policy_prefix = "arn:aws::${data.aws_caller_identity.current.account_id}:policy"
    terraform_runner_cidr = "0.0.0.0/0"
}

module "eks" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access = false

  cluster_addons = {
    coredns = {
      resolve_conflict = "OVERWRITE"
    }

    kube-proxy = {}
    
    vpc-cni = {
      resolve_conflict = "OVERWRITE"
    }
  }
  
  create_aws_auth_configmap = true
  manage_aws_auth_configmap = true
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_security_group_additional_rules = {
    ingress = {
      description = "EKS Cluster allows 443  port."
      type = "ingress"
      from_port = 443
      to_port = 443
      protocol = "TCP"
      cidr_blocks = [local.terraform_runner_cidr]
      source_node_security_group = false
    } 
  }
}