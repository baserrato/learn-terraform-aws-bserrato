variable "aws_access_key" {
  sensitive = true
  type      = string
  default   = ""
}

variable "aws_secret_key" {
  sensitive = true
  type      = string
  default   = ""
}

variable "sandbox_arn_role" {
  sensitive = true
  type      = string
  default   = ""
}
