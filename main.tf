resource "aws_ec2_managed_prefix_list" "this" {
  name = var.ec2_managed_prefix_list.name

  address_family = var.ec2_managed_prefix_list.address_family
  max_entries    = coalesce(var.ec2_managed_prefix_list.max_entries, max(length(var.ec2_managed_prefix_list.entries), 1))
  tags           = var.ec2_managed_prefix_list.tags
}

resource "aws_ec2_managed_prefix_list_entry" "this" {
  for_each = { for prefix_list in var.ec2_managed_prefix_list.entries : prefix_list.name => prefix_list }

  cidr           = each.value.cidr
  description    = coalesce(each.value.description, each.value.name)
  prefix_list_id = aws_ec2_managed_prefix_list.this.id
}
