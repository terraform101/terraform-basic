terraform {
  required_version = "~> 1.3.0" # 테라폼 버전

  required_providers { # 프로바이더 버전을 나열
    random = {
      version = ">= 3.0.0, < 3.1.0"
    }
    aws = {
      version = "4.2.0"
    }
  }

  cloud { # Cloud/Enterprise 같은 원격 실행을 위한 정보
    organization = "<MY_ORG_NAME>"
    workspaces {
      name = "my-first-workspace"
    }
  }

  backend "local" { # state를 보관하는 위치를 지정
    path = "relative/path/to/terraform.tfstate"
  }
}