terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.1"
    }
  }
}

provider "null" {}

resource "null_resource" "provision_vagrant_vm" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      host        = "127.0.0.1" # Vagrant HostName
      port        = 2222        # Vagrant Port
      user        = "vagrant"   # Vagrant User
      private_key = file("C:/Users/aymen/DevOpsProject/.vagrant/machines/default/virtualbox/private_key") # Path to IdentityFile
    }
  }
}
