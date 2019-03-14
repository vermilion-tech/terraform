/*
  Variables w/o default
 */

variable "domain" {
  type        = "string"
  description = "Digitalocean Domain to change records on."
}

variable "name" {
  type        = "string"
  description = "Name value of the A record"
}

variable "value" {
  type        = "string"
  description = "IPV4 Address of the A record"
}
