locals {
  name   = var.name
  region = var.region

  vpc_cidr                     = var.vpc_cidr
  azs                          = slice(data.aws_availability_zones.available.names, 0, 3)
  core_node_group              = "core-node-group"
  vpc_endpoints                = ["autoscaling", "ecr.api", "ecr.dkr", "ec2", "ec2messages", "elasticloadbalancing", "sts", "kms", "logs", "ssm", "ssmmessages"]
  karpenter_helm_chart_version = "v0.25.0"
  karpenter_namespace          = "karpenter"
  tags = merge(var.tags, {
    Blueprint  = local.name
    GithubRepo = "github.com/awslabs/data-on-eks"
  })
}
