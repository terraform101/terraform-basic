resource "local_file" "abc" {
  for_each = toset(["a", "b", "c"])
  content  = "abc"
  filename = "${path.module}/abc-${each.key}.txt"
}