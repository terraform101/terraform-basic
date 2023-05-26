resource "local_file" "abc" {
  content  = "123456!" # apply 동작 수행을 위해 content 내용을 수정한다.
  filename = "${path.module}/abc.txt"
}