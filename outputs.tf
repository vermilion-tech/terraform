output "ipv4_address" {
  value = "${module.droplet.ipv4_address}"
}

output "ssh_key_name" {
  value = "${module.ssh_key.name}"
}
