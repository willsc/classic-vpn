module "vpn-prod-internal" {
  source  = "./terraform-google-vpn"
  

  project_id         = var.project_id
  network            = "foo"
  region             = "europe-west2"
  gateway_name       = "vpn-prod-internal"
  tunnel_name_prefix = "vpn-tn-prod-internal"
  shared_secret      = "secrets"
  tunnel_count       = 1
  peer_ips           = ["1.1.1.1", "2.2.2.2"]

  route_priority = 1000
  remote_subnet  = ["10.17.0.0/22", "10.16.80.0/24"]
}