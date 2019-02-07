output "fingerprint" {
  value = "${digitalocean_ssh_key.web.fingerprint}"
}

output "name" {
  value = "${digitalocean_ssh_key.web.name}"
}
