#region EKS cluster
variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version for the EKS cluster"
  default = "1.31"
}
#endregion

#region Node group
variable "instance_types" {
  type        = list(string)
  description = "The instance types for the EKS node group"
  default     = ["t3.medium"]
}

variable "node_scaling_config" {
  type        = map(number)
  description = "The scaling configuration for the EKS node group"
  default = {
    min_size     = 1
    desired_size = 1
    max_size     = 3
  }
}

#endregion