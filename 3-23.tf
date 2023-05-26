resource "local_file" "abc" {
  content  = "lifecycle - step 4" # 수정
  filename = "${path.module}/abc.txt"

  lifecycle {
    ignore_changes = []
  }
}