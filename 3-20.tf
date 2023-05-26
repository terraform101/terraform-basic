resource "local_file" "abc" {
  content  = "lifecycle - step 1"
  filename = "${path.module}/abc.txt"

  lifecycle {
    create_before_destroy = false
  }
}