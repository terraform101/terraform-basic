resource "local_file" "abc" {
  content  = "123!" # apply 동작 수행을 위해 content 내용을 수정한다.
  filename = "${path.module}/abc.txt"
}

resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4" # init 테스트를 위한 임시 ami id
  instance_type = "t2.micro"
}