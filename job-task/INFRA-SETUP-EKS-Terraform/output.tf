output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = "us-east-1"
}

output "cluster_id" {
  description = "Kubernetes Cluster ID"
  value       = module.eks.cluster_id
}

// Run below command to retrieve the access credentials for the cluster

//  aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_id)
