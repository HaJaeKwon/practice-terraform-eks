resource "aws_security_group" "eks_cluster" {
  name = "${var.cluster_name}-cluster"
  description = "Cluster communication with Worker Nodes"
  vpc_id = aws_vpc.eks.id

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.cluster_name}-cluster"
  }
}
