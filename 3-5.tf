// 한줄 주석 방법1
# 한줄 주석 방법2

/*
라인
주석
*/

locals {
  key1     = "value1"     # = 를 기준으로 키와 값이 구분되며
  myStr    = "TF ♡ UTF-8" # UTF-8 문자를 지원한다.
  multiStr = <<EOF
  Multi
  Line
  String
  with anytext
EOF

  boolean1    = true   # boolean true
  boolean2    = false  # boolean false를 지원한다.
  deciaml     = 123    # 기본적으로 숫자는 10진수,
  octal       = 0123   # 0으로 시작하는 숫자는 8진수,
  hexadecimal = "0xD5" # 0x 값을 포함하는 스트링은 16진수,
  scientific  = 1e10   # 과학표기 법도 지원한다.

  # funtion 호출 예
  myprojectname = format("%s is myproject name", var.project)

  # 3항 연산자 조건문을 지원한다.
  credentials = var.credentials == "" ? file(var.credentials_file) : var.credentials
}