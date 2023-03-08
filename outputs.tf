output vpc_id {
  value = module.vpc.vpc_id
}

output vpc_private_subnets {
  value = module.vpc.private_subnets
}

output eks_cluster_id {
  value = module.eks.cluster_id
}

output eks_cluster_security_group_id {
  value = module.eks.cluster_security_group_id
}

output eks_cluster_version {
  value = module.eks.cluster_version
}
