variable "role_name" {
  type        = string
  description = "(Required) Name of the iam role you are provisioning"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Tags that should be applied to the role you are provisioning"
}

variable "role_description" {
  type        = string
  description = "(Optional) description of the iam role you are provisioning"
  default     = null
}

variable "role_assume_role_policy_document_json" {
  type        = string
  description = "(Optional) The policy that grants an entity permission to assume the role"
  default     = "{}"
}

variable "role_attached_policy_arns" {
  type        = map(string)
  description = "(Optional) Map of policy ARNs you want attached to the role that you are provisioning"
  default     = {}
}

variable "role_inline_policies" {
  description = "(Optional) Map of inline policies you'd like to associate with the role you are provisioning. Map key is the name of the policy and the value is the json"
  type        = map(string)
  default     = {}
}

variable "role_boundary_arn" {
  description = "(Optional) This accepts ARN of permission boundary. You can inject the output of one of our boundary modules."
  default     = null
}

variable "role_path" {
  description = "(Optional) Path to the role. https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html"
  default     = null
}

variable "instance_profile" {
  type        = bool
  description = "(Optional) Switch for if you want an instance profile created from this role or not (Default: false)"
  default     = false
}

variable "instance_profile_name" {
  type        = string
  description = "(Optional) Pass in value if you want to override the name of the instance profile"
  default     = ""
}