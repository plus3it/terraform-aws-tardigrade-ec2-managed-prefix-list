# terraform-aws-tardigrade-ec2-managed-prefix-list

Terraform module for managing an EC2 Prefix List and its entries.

<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_managed_prefix_list"></a> [ec2\_managed\_prefix\_list](#input\_ec2\_managed\_prefix\_list) | Object of attributes for the EC2 managed prefix list | <pre>object({<br>    name           = string<br>    address_family = optional(string, "IPv4")<br>    max_entries    = optional(number)<br>    tags           = optional(map(string), {})<br><br>    entries = optional(list(object({<br>      name        = string<br>      cidr        = string<br>      description = optional(string)<br>    })), [])<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_managed_prefix_list"></a> [ec2\_managed\_prefix\_list](#output\_ec2\_managed\_prefix\_list) | Object of attributes for the managed prefix list |
| <a name="output_ec2_managed_prefix_list_entries"></a> [ec2\_managed\_prefix\_list\_entries](#output\_ec2\_managed\_prefix\_list\_entries) | Object of attributes for the managed prefix list entries |

<!-- END TFDOCS -->
