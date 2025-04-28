provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # onde está sua configuração do cluster Kubernetes
  }
}
