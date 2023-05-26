variable "names" {
  default = ["a", "b", "c"]
}

resource "local_file" "abc" {
  content  = jsonencode(var.names) # 결과 : ["a", "b", "c"]
  filename = "${path.module}/abc.txt"
}