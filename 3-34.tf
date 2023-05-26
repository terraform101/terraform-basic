variable "my_password" {}

resource "local_file" "abc" {
  content  = var.my_password
  filename = "${path.module}/abc.txt"
}