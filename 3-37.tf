variable "my_var" {
  default = "var2"
}

resource "local_file" "abc" {
  content  = var.my_var
  filename = "${path.module}/abc.txt"
}