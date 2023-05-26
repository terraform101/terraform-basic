resource "local_file" "abc" {
  count    = 5
  content  = "abc"
  filename = "${path.module}/abc.txt"
}