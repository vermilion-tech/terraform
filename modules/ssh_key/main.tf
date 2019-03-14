resource "digitalocean_ssh_key" "web" {
  name       = "${var.name}"
  public_key = "${var.public_key_path}"
}
