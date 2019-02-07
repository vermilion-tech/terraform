/*
  Variables w/o default
 */

 variable "droplet_id" {
   type = "string"
   description = "Droplet ID to associate with the firewall"
 }

/*
  Variables w/ default
*/

variable "name" {
  type = "string"
  description = "The name of the firewall"
  default = "ssh-http-https"
}

variable "inbound_rules" {
  type = "list"
  description = "Inbound rules to associate with the firewall. Defaults to ssh-http-https."
  default = [
    {
      protocol           = "tcp"
      port_range         = "22"
      source_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol           = "tcp"
      port_range         = "80"
      source_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol           = "tcp"
      port_range         = "443"
      source_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol           = "icmp"
      source_addresses   = ["0.0.0.0/0", "::/0"]
    }
  ]
}

variable "outbound_rules" {
  type = "list"
  description = "Outbound rules to associate with the firewall. Defaults to dns-http-https-icmp."
  default = [
    {
      protocol                = "tcp"
      port_range              = "53"
      destination_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol                = "udp"
      port_range              = "53"
      destination_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol                = "tcp"
      port_range              = "80"
      destination_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol                = "tcp"
      port_range              = "443"
      destination_addresses   = ["0.0.0.0/0", "::/0"]
    },
    {
      protocol                = "icmp"
      destination_addresses   = ["0.0.0.0/0", "::/0"]
    }
  ]
}
