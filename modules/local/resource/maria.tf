resource "helm_release" "mariadb" {
  name       = "mariadb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mariadb"
  namespace  = "default"
  version    = "11.2.3" # exemplo, pode ajustar para a última versão estável

  values = [
    yamlencode({
      auth = {
        rootPassword = "root"
        username     = "root"
        password     = "root"
        database     = "db"
      }
    })
  ]
}
