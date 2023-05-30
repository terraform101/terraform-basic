variable "prefix" {
  default = "hello"
}

locals {
  name    = "terraform"
}

resource "local_file" "abc" {
  content  = local.content
  filename = "${path.module}/abc.txt"
}