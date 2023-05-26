variable "enable_file" {
  default = true
}

resource "local_file" "foo" {
  count    = var.enable_file ? 1 : 0
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

output "content" {
  value = var.enable_file ? local_file.foo[0].content : ""
}