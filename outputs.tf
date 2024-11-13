output "ec2_managed_prefix_list" {
  description = "Object of attributes for the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this
}

output "ec2_managed_prefix_list_entries" {
  description = "Object of attributes for the managed prefix list entries"
  value       = aws_ec2_managed_prefix_list_entry.this
}
