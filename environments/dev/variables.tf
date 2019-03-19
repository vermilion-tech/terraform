/*
Variables w/o defaults
 */
variable "do_token" {
  type = "string"
}

variable "image" {
  type        = "string"
  default     = "44854255"
  description = "image for droplet, defaults to vermilion-ubuntu-18.04-base"
}

/*
Variables w defaults
 */

variable "size" {
  type        = "string"
  default     = "s-1vcpu-1gb"
  description = "droplet size"
}

variable "domain" {
  type        = "string"
  default     = "vermilion.tech"
  description = "base domain"
}

variable "ssh_keys" {
  type = "list"

  default = [
    "ac:ff:22:c4:52:b3:10:e6:01:ca:80:c0:6d:8b:96:bc",
    "1f:78:e4:d5:42:46:ca:55:a9:d9:07:04:57:34:52:07",
  ] # knelson, ahylas

  description = "ssh access keys for droplet"
}

variable "region" {
  type        = "string"
  default     = "nyc1"
  description = "region to launch droplet within"
}

variable "base_name" {
  type        = "string"
  default     = "dev"
  description = "base name to apply to all modules"
}
