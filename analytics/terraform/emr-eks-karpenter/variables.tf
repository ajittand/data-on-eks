variable "name" {
  description = "Name of the VPC and EKS Cluster"
  default     = "emr-eks-karpenter"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
  default     = "us-west-2"
}

variable "eks_cluster_version" {
  description = "EKS Cluster version"
  default     = "1.24"
  type        = string
}

variable "tags" {
  description = "Default tags"
  default     = {}
  type        = map(string)
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  default     = "10.1.0.0/16"
  type        = string
}

variable "public_subnets" {
  description = "Public Subnets CIDRs. 4094 IPs per Subnet"
  default     = ["10.1.192.0/20", "10.1.208.0/20", "10.1.224.0/20"]
  type        = list(string)
}

variable "private_subnets" {
  description = "Private Subnets CIDRs. 16382 IPs per Subnet"
  default     = ["10.1.0.0/18", "10.1.64.0/18", "10.1.128.0/18"]
  type        = list(string)
}

variable "enable_yunikorn" {
  default     = false
  description = "Enable YuniKorn Scheduler"
  type        = bool
}
