provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "../../modules/vpc"

  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr
  az_1                 = var.az_1
  az_2                 = var.az_2
}

module "security_group" {
  source = "../../modules/security-group"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}

module "jenkins_server" {
  source = "../../modules/ec2"

  project_name       = var.project_name
  instance_name      = "${var.project_name}-jenkins"
  ami_id             = var.common_ami
  instance_type      = "c7i-flex.large"
  subnet_id          = module.vpc.public_subnet_1_id
  security_group_ids = [module.security_group.jenkins_sg_id]
  key_name           = var.key_name
  volume_size        = 30
}

module "tomcat_server_1" {
  source = "../../modules/ec2"

  project_name       = var.project_name
  instance_name      = "${var.project_name}-tomcat-1"
  ami_id             = var.common_ami
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.public_subnet_1_id
  security_group_ids = [module.security_group.tomcat_sg_id]
  key_name           = var.key_name
  volume_size        = 10
}

module "tomcat_server_2" {
  source = "../../modules/ec2"

  project_name       = var.project_name
  instance_name      = "${var.project_name}-tomcat-2"
  ami_id             = var.common_ami
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.public_subnet_2_id
  security_group_ids = [module.security_group.tomcat_sg_id]
  key_name           = var.key_name
  volume_size        = 10
}

module "monitoring_server" {
  source = "../../modules/ec2"

  project_name       = var.project_name
  instance_name      = "${var.project_name}-monitoring"
  ami_id             = var.common_ami
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.public_subnet_2_id
  security_group_ids = [module.security_group.monitoring_sg_id]
  key_name           = var.key_name
  volume_size        = 15
}

module "artifact_s3" {
  source = "../../modules/s3"

  bucket_name  = var.artifact_bucket_name
  project_name = var.project_name
}
# module "alb" {
#   source = "../../modules/alb"
#
#   project_name        = var.project_name
#   vpc_id              = module.vpc.vpc_id
#   subnet_ids          = [module.vpc.public_subnet_1_id, module.vpc.public_subnet_2_id]
#   alb_sg_id           = module.security_group.alb_sg_id
#   target_instance_ids = [
#     module.tomcat_server_1.instance_id,
#     module.tomcat_server_2.instance_id
#   ]
# }