resource "local_file" "abc" {
  content  = ""
  filename = "${path.module}/step7.txt"

  lifecycle {
    postcondition {
      condition     = self.content != ""
      error_message = "content cannot empty"
    }
  }
}

output "step7_content" {
  value = local_file.step7.id
}