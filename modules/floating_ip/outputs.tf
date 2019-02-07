output "ipv4_address" {
  value = "${digitalocean_floating_ip.web.ip_address}"
}
