resource "helm_release" "backbone-release" {
  name      = "backbone"
  chart     = "/home/simaodiazz/Documentos/helm_repository/charts/backbone"
  namespace = "default"
}