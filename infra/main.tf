terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.11.1"
    }
  }

  backend "remote" {}
}

provider "digitalocean" {
  token = var.digitalocean_token
}

# TODO: Remove placeholder
resource "digitalocean_droplet" "placeholder" {
  image  = "ubuntu-18-04-x64"
  name   = "placeholder-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}
