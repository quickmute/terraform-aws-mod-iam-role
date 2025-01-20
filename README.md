# terraform-aws-mod-iam-role
IAM Role Module

# Features
## Instance Profile
- Automatially makes a role into Instance Profile via `instance_profile` toggle
- Will create a trust policy to trust ec2 service

## Attached Policies
- Provide a map that contains a friendly name and policy arn

## Inline Policies
- Provide a map that contains a friendly name and a json 