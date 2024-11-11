module "ec2_managed_prefix_list" {
  source = "../.."

  ec2_managed_prefix_list = {
    name = "tardigrade-test-prefix-list-${random_string.this.result}"
  }
}

resource "random_string" "this" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}

locals {
  id = random_string.this.result
}
