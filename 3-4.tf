resource "local_file" "abc" {
  content  = "abc!"
  filename = "${path.module}/abc.txt"
}

resource "local_file" "dev" {
  content  = "def!"
  filename = "${path.module}/def.txt"
}