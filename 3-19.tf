resource "kubernetes_namespace" "example" {
  metadata {
    annotations = {
      name = "example-annotation"
    }
    name = "terraform-example-namespace"
  }
}

resource "kubernetes_secret" "example" {
  metadata {
    namespace = kubernetes_namespace.example.metadata.0.name # namespace 리소스 인수 참조
    name      = "terraform-example"
  }
  data = {
    password = "P4ssw0rd"
  }
}