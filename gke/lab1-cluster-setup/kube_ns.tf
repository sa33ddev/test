resource "kubernetes_namespace" "test" {
    metadata {
      name = "test"
      annotations = {
        name = "test"
      }
      labels = {
        env = "test"
      }
    }
  
}