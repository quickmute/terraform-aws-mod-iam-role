locals {
  ## workaround to validate instance_profile_name without using Terraform version 1.9
  ## https://developer.hashicorp.com/terraform/language/expressions/custom-conditions#input-variable-validation
  instance_profile_name = length(var.instance_profile_name) > 3 ? var.instance_profile_name : var.role_name
}