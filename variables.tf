variable "aws_access_key" {
  sensitive = true
  type      = string
}

variable "aws_secret_key" {
  sensitive = true
  type      = string
}

variable "sandbox_arn_role" {
  sensitive = true
  type      = string
}
