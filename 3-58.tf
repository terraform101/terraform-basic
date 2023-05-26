variable "names" {
  type    = list(string)
  default = ["a", "b"]
}

output "A_upper_value" {
  value = [for v in var.names : upper(v)]
}

output "B_index_and_value" {
  value = [for i, v in var.names : "${i} is ${v}"]
}

output "C_make_object" {
  value = { for v in var.names : v => upper(v) }
}

output "D_with_filter" {
  value = [for v in var.names : upper(v) if v != "a"]
}