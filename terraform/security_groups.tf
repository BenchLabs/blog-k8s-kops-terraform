// Used to allow web access to the k8s API ELB
resource "aws_security_group" "k8s_common_http" {
  name   = "${local.environment}_k8s_common_http"
  vpc_id = "${module.dev_vpc.vpc_id}"
  tags   = "${merge(local.tags)}"

  ingress {
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = ["${local.ingress_ips}"]
  }

  ingress {
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = ["${local.ingress_ips}"]
  }
}
