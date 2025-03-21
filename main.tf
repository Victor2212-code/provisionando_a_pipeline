provider "local" {}

resource "null_resource" "create_k3d_cluster" {
  provisioner "local-exec" {
    command = <<EOT
      k3d cluster delete meu-cluster || true
      k3d cluster create meu-cluster --agents 2
    EOT
  }
}
