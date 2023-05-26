resource "local_file" "foo" {
  content  = upper("foo!")
  filename = "${path.module}/foo.bar"
}