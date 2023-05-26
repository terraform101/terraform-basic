resource "local_file" "abc" {
  content  = "abc!"
  filename = "${path.module}/abc.txt"
}