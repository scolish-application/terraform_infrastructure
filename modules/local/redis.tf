resource "helm_release" "redis" {
  name       = "redis"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  namespace  = "default"
  version    = "17.3.2" # exemplo, pode ajustar para a última versão estável

  values = [
    yamlencode({
      auth = {
        password = "root"
      }
    })
  ]
}
