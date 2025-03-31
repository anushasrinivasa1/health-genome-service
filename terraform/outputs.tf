 
output "eks_cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.genome_eks.name
}

output "rds_endpoint" {
  description = "PostgreSQL RDS endpoint"
  value       = aws_rds_instance.genome_db.endpoint
}