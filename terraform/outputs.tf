output "region" {
  value = "${data.aws_region.current.name}"
}

output "vpc_id" {
  value = "${module.dev_vpc.vpc_id}"
}

output "vpc_name" {
  value = "${local.vpc_name}"
}

output "vpc_cidr_block" {
  value = "${module.dev_vpc.vpc_cidr_block}"
}

// Public Subnets

output "public_subnet_ids" {
  value = ["${module.dev_vpc.public_subnets}"]
}

output "public_route_table_ids" {
  value = ["${module.dev_vpc.public_route_table_ids}"]
}

// Private Subnets

output "private_subnet_ids" {
  value = ["${module.dev_vpc.private_subnets}"]
}

output "private_route_table_ids" {
  value = ["${module.dev_vpc.private_route_table_ids}"]
}

output "default_security_group_id" {
  value = "${module.dev_vpc.default_security_group_id}"
}

output "nat_gateway_ids" {
  value = "${module.dev_vpc.natgw_ids}"
}

output "availability_zones" {
  value = ["${local.azs}"]
}

output "common_http_sg_id" {
  value = "${aws_security_group.k8s_common_http.id}"
}

// Needed for kops

output "kops_s3_bucket" {
  value = "${aws_s3_bucket.kops_state.bucket}"
}

output "kubernetes_cluster_name" {
  value = "${local.kubernetes_cluster_name}"
}
