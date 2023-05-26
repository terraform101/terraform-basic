resource "local_file" "a" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

// moved {
//   from = local_file.a
//   to   = local_file.b
// }

output "file_content" {
  value = local_file.a.content
}