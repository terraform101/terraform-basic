variable "my_var" {}

resource "local_file" "abc" {
  content  = var.my_var
  filename = "${path.module}/abc.txt"
}