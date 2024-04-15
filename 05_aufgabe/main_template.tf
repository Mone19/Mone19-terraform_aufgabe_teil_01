provider "template" {}

resource "template_file" "config" {
  template = <<TEMPLATE
{
  "user": "${var.user}",
  "password": "${var.password}"
}
TEMPLATE

  vars = {
    user     = var.user
    password = var.password
  }
}

variable "user" {
  type = string
}

variable "password" {
  type = string
}

output "config_json" {
  value = template_file.config.rendered
}
