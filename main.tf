# Initialize required DigitalOcean provider
provider "digitalocean" {
  token = "${var.do_personal_access_token}"
}

module "ssh_key" {
  source = "./modules/ssh_key"

  name            = "terraform-publickey"
  public_key_path = "${file("${path.root}/terraform.pem.pub")}"
}

module "droplet" {
  source = "./modules/droplet"

  name   = "terraform-digitalocean"
  region = "sfo2"

  ssh_keys = [
    "${module.ssh_key.fingerprint}",
  ]

  tags = [
    "terraform",
  ]
}
