resource "digitalocean_database_cluster" "cloudclass-database" {
  name       = "cloudclass-database"
  engine     = "pg"
  version    = "12"
  size       = "db-s-1vcpu-1gb"
  region     = "ams3"
  node_count = 1
}
