variable "my_password" {
  default   = "password"
  sensitive = true
}

resource "local_file" "abc" {
  content  = var.my_password
  filename = "${path.module}/abc.txt"
}