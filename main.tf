resource "aws_iam_role" "iam_role" {
  name                 = var.role_name
  description          = var.role_description
  assume_role_policy   = var.instance_profile == true ? data.aws_iam_policy_document.ec2_assume_role.json : var.role_assume_role_policy_document_json
  permissions_boundary = var.role_boundary_arn
  path                 = var.role_path
  tags                 = merge(var.tags, { "Name" = var.role_name })
}

