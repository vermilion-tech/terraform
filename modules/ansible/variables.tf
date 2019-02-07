/*
  Variables w/o default
 */

variable "ipv4_address" {
  type = "string"
  description = "ipv4_address to execute with Ansible."
}

variable "ssh_key_path" {
  type = "string"
  description = "Path of ssh private key to use with Ansible."
}

variable "playbook_path" {
  type = "string"
  description = "Path of the playbook to use with Ansible."
}

 /*
   Variables w/ default
  */

variable "ssh_user" {
  type = "string"
  description = "SSH user to use with Ansible."
  default = "root"
}

variable "ssh_host_key_checking" {
  type = "string"
  description = "True/False string value to enable host checking with Ansible."
  default = "False"
}

variable "sleep" {
  type = "string"
  description = "Time to wait before executing Ansible."
  default = "120"
}
