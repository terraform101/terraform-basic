data "archive_file" "dotfiles" {
  type        = "zip"
  output_path = "${path.module}/dotfiles.zip"

  source {
    content  = "hello a"
    filename = "${path.module}/a.txt"
  }

  source {
    content  = "hello b"
    filename = "${path.module}/b.txt"
  }

  source {
    content  = "hello c"
    filename = "${path.module}/c.txt"
  }
}