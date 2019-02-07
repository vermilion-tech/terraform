# Provisions A record with provisioned floating_ip and droplet_name
resource "digitalocean_record" "web" {
  domain = "${var.domain}"
  type   = "A"
  name   = "${var.name}"
  value  = "${var.value}"
}
