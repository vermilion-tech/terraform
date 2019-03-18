output "droplet_ipv4_address" {
  value = "${module.droplet.ipv4_address}"
}

output "droplet_dns_record" {
  value = "${module.dns.fqdn}"
}
