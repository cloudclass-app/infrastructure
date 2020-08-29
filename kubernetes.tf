resource "digitalocean_kubernetes_cluster" "cloudclass-kubernetes" {
  name = "cloudclass-kubernetes"
  region = "ams3"
  version = "1.18.6-do.0"
  auto_updgrade = true

  node_pool {
    name = "cloudclass-kubernetes-pool-main"
    size = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes = 1
    max_nodes = 2
  }
}

provider "kubernetes" {
  load_config_file = false
  host  = digitalocean_kubernetes_cluster.cloudclass-kubernetes.endpoint
  token = digitalocean_kubernetes_cluster.cloudclass-kubernetes.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.cloudclass-kubernetes.kube_config[0].cluster_ca_certificate
  )
}