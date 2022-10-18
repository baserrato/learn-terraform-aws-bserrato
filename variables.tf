variable "sandbox_developer" {
  sensitive = true
  type      = string
  default   = "774051255656"
}

variable "role_credentials" {
  sensitive = true
  type      = string
  default   = "arn:aws:iam::774051255656:role/Developer"
}
