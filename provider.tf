terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~>1.22.2"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~>1.12.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}