/*
  Variables w/o default
 */

variable "droplet_id" {
  type        = "string"
  description = "Droplet ID to associate with the Floating IP."
}

variable "region" {
  type        = "string"
  description = "Region to associate with the Floating IP."
}
