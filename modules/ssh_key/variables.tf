variable "name" {
  type        = "string"
  description = "SSH key name."
}

variable "public_key_path" {
  type        = "string"
  description = "Public key path to use."

  # default = "${file("${path.root}/terraform.pem.pub")}"
}
