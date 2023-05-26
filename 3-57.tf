variable "names" {
  default = ["a", "b", "c"]
}

resource "local_file" "abc" {
  content  = jsonencode([for s in var.names : upper(s)]) # 결과 : ["A", "B", "C"]
  filename = "${path.module}/abc.txt"
}