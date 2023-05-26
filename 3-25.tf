variable "file_name" {
  default = "step0.txt"
}

resource "local_file" "abc" {
  content  = "lifecycle - step 6" # 수정
  filename = "${path.module}/${var.file_name}"

  lifecycle {
    precondition {
      condition     = var.file_name == "step6.txt"
      error_message = "file name is not \"step6.txt\""
    }
  }
}