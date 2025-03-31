 
variable "aws_region" {
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  default     = "genome-cluster"
}

variable "db_instance_type" {
  description = "Database instance type"
  default     = "db.t3.micro"
}