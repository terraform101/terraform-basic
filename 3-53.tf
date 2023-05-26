variable "names" {
  default = {
    a = "content a"
    b = "content b"
    c = "content c"
  }
}

resource "local_file" "abc" {
  for_each = var.names
  content  = each.value
  filename = "${path.module}/abc-${each.key}.txt"
}

resource "local_file" "def" {
  for_each = local_file.abc
  content  = each.value.content
  filename = "${path.module}/def-${each.key}.txt"
}