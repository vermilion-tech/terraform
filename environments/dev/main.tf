terraform {
  required_version = "0.11.13"
}

provider "digitalocean" {
  token = "${var.do_token}"
}

#===============================================================================
resource "random_id" "resource" {
  prefix      = "${var.base_name}-"
  byte_length = 8
}

#===============================================================================
module "droplet" {
  source = "../../modules/droplet"

  image    = "${var.image}"
  name     = "${random_id.resource.hex}"
  region   = "${var.region}"
  ssh_keys = "${var.ssh_keys}"
  size     = "${var.size}"
  tags     = ["${var.base_name}"]
}

module "floating_ip" {
  source = "../../modules/floating_ip"

  droplet_id = "${module.droplet.droplet_id}"
  region     = "${var.region}"
}

module "dns" {
  source = "../../modules/dns"

  domain = "${var.domain}"
  name   = "${random_id.resource.hex}"
  value  = "${module.floating_ip.ipv4_address}"
}
