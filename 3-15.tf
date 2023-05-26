resource "local_file" "abc" {
  content  = "123!"
  filename = "${path.module}/abc.txt"
}

resource "local_file" "def" {
  content  = "456!"
  filename = "${path.module}/def.txt"
}