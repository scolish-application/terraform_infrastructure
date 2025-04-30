resource "helm_release" "backbone-release" {
    name       = "backbone"
    repository = "/home/simaodiazz/Documentos/helm_repository/charts/backbone"
    chart      = "backbone"
    namespace  = "default"
    version    = "1.0.0"
}
