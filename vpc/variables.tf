variable region {
  type = string
  default = "ap-northeast-2"
}

variable availability_zones{
  description = "AZ info"
  type = list(string)
  default = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "vpc_name" {
  description = "VPC name"
  type = string
  default = null
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = null
}

variable "cluster_name" {
  description = "EKS cluster name"
  type = string
  default = null
}

variable "cluster_version" {
  description = "EKS k8s version"
  type = string
  default = "1.26"
}
