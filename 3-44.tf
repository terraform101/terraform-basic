variable "prefix" {
  default = "hello"
}

locals {
  name    = "terraform"
  content = "${var.prefix} ${local.name}"
  my_info = {
    age    = 20
    region = "KR"
  }
  my_nums = [1, 2, 3, 4, 5]
}

locals {
  content = "content2" # 중복 선언되었으므로 오류가 발생한다.
}