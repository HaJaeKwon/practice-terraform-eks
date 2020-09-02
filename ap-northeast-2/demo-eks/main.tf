module "demo-eks" {
  source = "../../modules/projects/eks"

  cluster_name = "demo-eks"
  cidr_block_prefix = "10.0"
}

variable "aws_access_key" {
  type = string
  default = "dummy"
}

variable "aws_secret_key" {
  type = string
  default = "dummy"
}
