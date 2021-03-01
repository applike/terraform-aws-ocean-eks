locals {
  subnets             = var.subnets != null ? var.subnets : module.vpc.private_subnets
  vpc_id              = var.vpc_id != null ? var.vpc_id : module.vpc.vpc_id
  ami_id              = var.ami_id != null ? var.ami_id : module.eks.workers_default_ami_id
  cluster_identifier  = var.cluster_identifier != null ? var.cluster_identifier : module.eks.cluster_id
  cluster_name        = "${module.this.project}-${module.this.environment}"
  ocean_cluster_id    = element(concat(spotinst_ocean_aws.this.*.id, [""]), 0)
  ocean_controller_id = var.cluster_identifier != null ? var.cluster_identifier : module.eks.cluster_id
}
