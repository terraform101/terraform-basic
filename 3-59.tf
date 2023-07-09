variable "members" {
  type = map(object({
    role = string
  }))
  default = {
    ab = { role = "member", group = "dev" }
    cd = { role = "admin", group = "dev" }
    ef = { role = "member", group = "ops" }
  }
}

output "A_to_tupple" {
  value = [for k, v in var.members : "${k} is ${v.role}"]
}

output "B_get_only_role" {
  value = {
    for name, user in var.members : name => user.role
    if user.role == "admin"
  }
}

output "C_group" {
  value = {
    for name, user in var.members : user.role => name...
  }
}