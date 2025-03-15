provider "local" {}

resource "null_resource" "create_k3d_cluster"{
    provisioner "local-exec" {
        command = "k3d cluster create meu-cluster --agents 2"
    }
}
