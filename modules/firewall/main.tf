# Provisions a DigitalOcean firewall
resource "digitalocean_firewall" "web" {
  name = "${var.name}"

  droplet_ids = [ "${var.droplet_id}" ]

  inbound_rule = "${var.inbound_rules}"

  outbound_rule = "${var.outbound_rules}"
}
