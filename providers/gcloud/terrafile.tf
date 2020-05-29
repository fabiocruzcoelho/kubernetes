provider "google" {
  credentials = file("/home/fabio/devopsestudos.json")
  project     = var.project_id
  region      = var.region
  version     = "~> 3.0"
}

// resource "google_compute_address" "ip_address" {
//   name = "external-ip"
// }

// locals {
//   access_config = {
//     nat_ip       = google_compute_address.ip_address
//     network_tier = "PREMIUM"
//   }
// }

locals {
  subnet_01 = "${var.network_name}-subnet-01"
}

/******************************************
	VPC configuration
 *****************************************/
module "vpc" {
  source       = "terraform-google-modules/network/google"
  version      = "2.3.0"
  project_id   = var.project_id
  network_name = var.network_name

  subnets = [
    {
      subnet_name   = "${local.subnet_01}"
      subnet_ip     = var.vpc_cidr_block
      subnet_region = var.region
    }
  ]
}

module "cloud-nat" {
  source        = "terraform-google-modules/cloud-nat/google"
  version       = "1.3.0"
  router        = var.router
  project_id    = var.project_id
  region        = var.region
  network       = var.network_name
  create_router = true
  name          = "cloud-nat-${var.router_name}"
}

/******************************************
	Instance configuration
 *****************************************/
// module "master" {
//   source        = "./modules/compute_instance"
//   project_id    = var.project_id
//   subnetwork    = var.subnetwork
//   num_instances = var.kube_master_num
//   hostname      = "kube-master"
//   network       = "default"
// }
