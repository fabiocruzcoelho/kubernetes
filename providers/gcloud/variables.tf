variable "project_id" {
  description = "The GCP project to use for integration tests"
  type        = string
  default     = "devopsestudos"
}

variable "region" {
  description = "The GCP region to create and test resources in"
  type        = string
  default     = "southamerica-east1"
}

variable "router_name" {
  description = "The name of the GCP Router to associate the NAT to"
  default     = "default"
}

variable "network_name" {
  description = "The name of the VPC network being created"
  default     = "default"
}

variable "vpc_cidr_block" {
  description = "The name of the router in which this NAT will be configured. Changing this forces a new NAT to be created."
  default     = "10.10.10.0/24"
}

variable "router" {
  description = "The name of the router in which this NAT will be configured. Changing this forces a new NAT to be created."
  default     = "k8s-egress-internet"
}

// variable "subnetwork" {
//   description = "The subnetwork to host the compute instances in, If neither subnetwork is specified, defaults to the network default"
//   default     = "default"
// }

// variable "kube_master_num" {
//   description = "Number of Kubernetes Master Nodes"
// }

// # disk
// variable "source_image" {
//   description = "Source disk image. If neither source_image nor source_image_family is specified, defaults to the latest public CentOS image."
//   default     = ""
// }
