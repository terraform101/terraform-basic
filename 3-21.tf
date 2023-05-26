resource "local_file" "abc" {
  content  = "lifecycle - step 2" # 수정
  filename = "${path.module}/abc.txt"

  lifecycle {
    create_before_destroy = true # 생성 후 삭제
  }
}