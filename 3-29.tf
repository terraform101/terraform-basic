# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_subnet" "primary" {
  availability_zone = data.aws_availability_zones.available.names[0]
  # e.g. ap-northeast-2a
}
resource "aws_subnet" "secondary" {
  availability_zone = data.aws_availability_zones.available.names[1]
  # e.g. ap-northeast-2b
}