/*
  Variables w/o default
 */

variable "name" {
  type        = "string"
  description = "Name to associate with the Droplet"
}

variable "region" {
  type        = "string"
  description = "Region to use when creating the Droplet"
}

variable "ssh_keys" {
  type        = "list"
  description = "List of ssh_keys to associate with the Droplet"
}

variable "user_data" {
  type        = "string"
  description = "user_data"
}

/*
  Variables w/ default
 */

variable "size" {
  type        = "string"
  description = "Size to use when creating the Droplet"
  default     = "s-1vcpu-1gb"
}

variable "image" {
  type        = "string"
  description = "Image to use when creating the Droplet"
  default     = "ubuntu-18-10-x64"
}

variable "monitoring" {
  type        = "string"
  description = "Specifies whether to enable Droplet monitoring"
  default     = "true"
}

variable "resize_disk" {
  type        = "string"
  description = "Specifies whether to resize the disk when changing Droplet size"
  default     = "true"
}

variable "tags" {
  type        = "list"
  description = "Tags to associate with the Droplet"
  default     = ["terraform"]
}
