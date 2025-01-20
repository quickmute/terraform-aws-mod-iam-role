resource "aws_iam_role_policy_attachment" "attachment" {
  for_each   = var.role_attached_policy_arns
  role       = aws_iam_role.iam_role.name
  policy_arn = each.value
}

resource "aws_iam_role_policy" "policy" {
  for_each = var.role_inline_policies
  role     = aws_iam_role.iam_role.id
  name     = each.key
  policy   = each.value
}

resource "aws_iam_instance_profile" "profile" {
  count = var.instance_profile == true ? 1 : 0
  name  = local.instance_profile_name
  role  = aws_iam_role.iam_role.name
  tags = merge(
    var.tags,
    {
      "Name" = local.instance_profile_name
    }
  )
}