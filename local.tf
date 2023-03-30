resource "local_file" "test" {
  content  = var.content
  filename = "test.txt"
}

data "local_file" "test" {
  filename = "test.txt"
}

output "data-source-result" {
  value = data.local_file.test.content
}

variable "content" {}

output "id-test" {
  value = resource.local_file.test.id
}
