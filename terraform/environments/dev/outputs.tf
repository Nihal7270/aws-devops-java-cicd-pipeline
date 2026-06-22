output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1_id" {
  value = module.vpc.public_subnet_1_id
}

output "public_subnet_2_id" {
  value = module.vpc.public_subnet_2_id
}

output "alb_sg_id" {
  value = module.security_group.alb_sg_id
}

output "jenkins_sg_id" {
  value = module.security_group.jenkins_sg_id
}

output "tomcat_sg_id" {
  value = module.security_group.tomcat_sg_id
}

output "monitoring_sg_id" {
  value = module.security_group.monitoring_sg_id
}

output "jenkins_public_ip" {
  value = module.jenkins_server.public_ip
}

output "tomcat_1_public_ip" {
  value = module.tomcat_server_1.public_ip
}

output "tomcat_2_public_ip" {
  value = module.tomcat_server_2.public_ip
}

output "monitoring_public_ip" {
  value = module.monitoring_server.public_ip
}

output "jenkins_private_ip" {
  value = module.jenkins_server.private_ip
}

output "tomcat_1_private_ip" {
  value = module.tomcat_server_1.private_ip
}

output "tomcat_2_private_ip" {
  value = module.tomcat_server_2.private_ip
}

output "monitoring_private_ip" {
  value = module.monitoring_server.private_ip
}

output "artifact_bucket_name" {
  value = module.artifact_s3.bucket_name
}

output "artifact_bucket_arn" {
  value = module.artifact_s3.bucket_arn
}

#output "alb_dns_name" {
#  value = module.alb.alb_dns_name
#}
#
#output "alb_arn" {
#  value = module.alb.alb_arn
#}
#
#output "target_group_arn" {
#  value = module.alb.target_group_arn
#}