output "iam_role" {
  description = "Full Role Object to do as you please"
  value       = aws_iam_role.iam_role
}

output "iam_role_arn" {
  description = "Just the ARN"
  value       = aws_iam_role.iam_role.arn
}

output "iam_role_name" {
  description = "Just the Name"
  value       = aws_iam_role.iam_role.name
}

output "attached_policies" {
  description = "List of attached policies"
  value       = aws_iam_role_policy_attachment.attachment
}

output "inline_policies" {
  description = "List of inline policies"
  value       = aws_iam_role_policy.policy
}

output "instance_profile" {
  description = "Instance Profile"
  value       = aws_iam_instance_profile.profile
}