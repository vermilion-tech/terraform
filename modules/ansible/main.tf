resource "null_resource" "web" {
  provisioner "local-exec" {
    command = "sleep ${var.sleep}; ANSIBLE_HOST_KEY_CHECKING=${var.ssh_host_key_checking} ansible-playbook -u ${var.ssh_user} --private-key ${var.ssh_key_path} -i '${var.ipv4_address},' ${var.playbook_path}"
  }
}
