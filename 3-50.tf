variable "names" {
  type    = list(string)
  default = ["a", "b", "c"]
}

resource "local_file" "abc" {
  count   = length(var.names)
  content = "abc"
  # 변수 인덱스에 직접 접근
  filename = "${path.module}/abc-${var.names[count.index]}.txt"
}

resource "local_file" "def" {
  count   = length(var.names)
  content = local_file.abc[count.index].content
  # element function 활용
  filename = "${path.module}/def-${element(var.names, count.index)}.txt"
}