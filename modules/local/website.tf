resource "helm_release" "website-release" {
  name      = "website"
  chart     = "/home/simaodiazz/Documentos/helm_repository/charts/website"
  namespace = "default"
}