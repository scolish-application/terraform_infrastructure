resource "helm_release" "mariadb" {
  name      = "mariadb"
  chart     = "https://charts.bitnami.com/bitnami/mariadb-11.3.0.tgz"  # ⚠️ URL completa do .tgz
  namespace = "default"

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