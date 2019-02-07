# Provisions a DigitalOcean floating_ip
resource "digitalocean_floating_ip" "web" {
  droplet_id = "${var.droplet_id}"
  region     = "${var.region}"
}
