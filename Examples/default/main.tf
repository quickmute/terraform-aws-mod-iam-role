module "example" {
  source = "../../"

  role_name                             = "test"
  role_description                      = "this is a test role"
  ## This will attach assume_role_policy to trust ec2 service
  instance_profile                      = true

  role_attached_policy_arns = {
    readonly = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  }

  role_inline_policies = {
    s3 = data.aws_iam_policy_document.policy.json
  }

  tags                                  = {}
}

data "aws_iam_policy_document" "policy" {
  statement {
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "s3:CreateBucket"
    ]
  }
}

