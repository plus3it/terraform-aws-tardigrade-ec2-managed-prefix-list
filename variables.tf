variable "ec2_managed_prefix_list" {
  description = "Object of attributes for the EC2 managed prefix list"
  type = object({
    name           = string
    address_family = optional(string, "IPv4")
    max_entries    = optional(number)
    tags           = optional(map(string), {})

    entries = optional(list(object({
      name        = string
      cidr        = string
      description = optional(string)
    })), [])
  })
}
