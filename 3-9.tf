terraform {
  required_version = ">= 1.0.0"
}

resource "local_file" "abc" {
  content  = "123!"
  filename = "${path.module}/abc.txt"
}