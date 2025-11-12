terraform {
  required_providers {
    null = {
        source = "hashicorp/null"
        version = "3.0"
    }
  }
}

variable "message" {
  type = string
  default = "Hello HI default"
}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo '${var.message}'"
  }
}

output "message" {
  value = var.message
}