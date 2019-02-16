variable "region" {
  type = "string"
}

variable "name" {
  type    = "string"
  default = "cluster-terraform"
}

variable "version" {
  type    = "string"
  default = "1.13.2-do.0"
}

variable "tags" {
  type    = "list"
  default = []
}

variable "node_size" {
  type    = "string"
  default = "s-1vcpu-2gb"
}

variable "node_count" {
  type    = "string"
  default = "3"
}

variable "node_tags" {
  type    = "list"
  default = []
}
