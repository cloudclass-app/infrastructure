resource "digitalocean_project" "cloudclass" {
  name = "cloudclass"
  description = "CloudClass resources"
}

resource "digitalocean_project_resources" "cloudclass-resources" {
  project = digitalocean_project.cloudclass.id
  resources = [
    digitalocean_database_cluster.cloudclass-database.urn
  ]
}