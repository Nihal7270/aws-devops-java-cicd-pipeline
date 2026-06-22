output "alb_sg_id" {
  description = "ALB security group ID"
  value       = aws_security_group.alb_sg.id
}

output "jenkins_sg_id" {
  description = "Jenkins security group ID"
  value       = aws_security_group.jenkins_sg.id
}

output "tomcat_sg_id" {
  description = "Tomcat security group ID"
  value       = aws_security_group.tomcat_sg.id
}

output "monitoring_sg_id" {
  description = "Monitoring security group ID"
  value       = aws_security_group.monitoring_sg.id
}