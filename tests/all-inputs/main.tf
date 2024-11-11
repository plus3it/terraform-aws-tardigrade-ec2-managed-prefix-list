module "ec2_managed_prefix_list" {
  source = "../.."

  ec2_managed_prefix_list = {
    name           = "tardigrade-test-prefix-list-${local.id}"
    address_family = "IPv4"
    max_entries    = 5
    tags = {
      Name = "tardigrade-test-prefix-list-${local.id}"
    }

    entries = [
      {
        name        = "tardigrade-test-prefix-list-entry-${local.id}-1"
        cidr        = "10.0.0.0/16"
        description = "tardigrade-test-prefix-list-entry-${local.id}-1"
      },
    ]
  }
}

data "terraform_remote_state" "prereq" {
  backend = "local"
  config = {
    path = "prereq/terraform.tfstate"
  }
}

locals {
  id = data.terraform_remote_state.prereq.outputs.test_id.result
}
