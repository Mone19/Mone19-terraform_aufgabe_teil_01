provider "local" {}
  

  resource "random_string" "random_string" {
  length  = 10
  special = false
}

output "random_string_output" {
  value = random_string.random_string.result
}
