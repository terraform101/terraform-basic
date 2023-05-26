resource "local_file" "abc" {
  content  = "123!"
  filename = "${path.module}/abc.txt"
}

resource "local_file" "def" {
  content  = local_file.abc.content # <-- local_file.abc의 속성 값을 대신 넣어줌
  filename = "${path.module}/def.txt"
}