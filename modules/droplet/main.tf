# Provisions a DigitalOcean droplet
resource "digitalocean_droplet" "web" {
  image       = "${var.image}"
  name        = "${var.name}"
  region      = "${var.region}"
  size        = "${var.size}"
  ssh_keys    = ["${var.ssh_keys}"]
  monitoring  = "${var.monitoring}"
  resize_disk = "${var.resize_disk}"
  tags        = "${var.tags}"

  user_data = "${var.user_data}"
}
