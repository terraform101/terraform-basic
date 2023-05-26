variable "names" {
  default = {
    a = "hello a"
    b = "hello b"
    c = "hello c"
  }
}

data "archive_file" "dotfiles" {
  type        = "zip"
  output_path = "${path.module}/dotfiles.zip"

  dynamic "source" {
    for_each = var.names
    content {
      content  = source.value
      filename = "${path.module}/${source.key}.txt"
    }
  }
}