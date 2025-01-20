data "aws_iam_policy_document" "ec2_assume_role" {
  source_policy_documents = [var.role_assume_role_policy_document_json]
  statement {
    actions = [
      "sts:AssumeRole",
    ]
    principals {
      type = "Service"
      identifiers = [
        "ec2.amazonaws.com"
      ]
    }
    effect = "Allow"
  }
}