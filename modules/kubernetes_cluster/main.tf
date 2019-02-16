locals {
  name = "${var.prefix != "" ? "${var.name}-${var.prefix}" : var.name}"
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "${local.name}"
  region  = "${var.region}"
  version = "${var.version}"

  tags = "${var.tags}"

  node_pool {
    name       = "${var.name}-default_node_pool"
    size       = "${var.node_size}"
    node_count = "${var.node_count}"
    tags       = "${var.node_tags}"
  }
}
