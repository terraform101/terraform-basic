variable "sensitive_content" {
  default   = "secret"
  sensitive = true
}

resource "local_file" "foo" {
  content  = upper(var.sensitive.content)
  filename = "${path.module}/foo.bar"

  provisioiner "local-exec" {
    command = "echo The content is ${self.content}"
  }

  provisioner "local-exec" {
    command    = "abc"
    on_failure = continue
  }

  provisioner "local-exec" {
    when    = prevent_destroy
    command = "echo The deleting filename is ${self.filename}"
  }
}