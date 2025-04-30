# This release is come from my local repository
resource "helm_release" "website-release" {
    name       = "website"
    repository = "/home/simaodiazz/Documentos/helm_repository"
    chart      = "website"
    namespace  = "default"
    version    = "1.0.0"
}
