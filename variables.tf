variable "kms_key_arn" {
  description = "ARN of the KMS key which will decrypt secret strings"
}

variable "ssm_actions" {
  type        = list(string)
  default     = ["ssm:GetParametersByPath", "ssm:GetParameters"]
  description = "Actions to allow in the policy"
}

variable "ssm_resources" {
  type        = list(string)
  default     = ["*"]
  description = "Resources to apply the actions specified in the policy"
}

variable "force_destroy" {
  default     = "false"
  description = "Destroy even if it has non-Terraform-managed IAM access keys, login profiles or MFA devices"
}

variable "path" {
  default     = "/"
  description = "Path in which to create the user"
}