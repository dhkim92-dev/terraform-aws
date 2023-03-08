variable "region" {
    description = "AWS service region name"
    type = string
    default = "ap-northeast-2"
}

variable "availability_zones" {
    description = "AWS AZ info"
    type = list(string)
    default = [ "ap-northeast-2a", "ap-northeast-2c" ]
}

variable vpc_name {
    type = string
}

variable vpc_cidr {
    type = string
}

variable cluster_name {
    type = string
}

variable cluster_version {
    type = string
}
