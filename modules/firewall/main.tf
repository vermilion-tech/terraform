# Provisions a DigitalOcean firewall
resource "digitalocean_firewall" "web" {
  name = "${var.name}"

  tags = "${var.tags}"

  droplet_ids = "${var.droplet_ids}"

  inbound_rule = "${var.inbound_rules}"

  outbound_rule = "${var.outbound_rules}"
}
