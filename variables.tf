variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "01BB82-C0C7DF-38710A"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "817506052759"
}

variable "org_domain_name" {
  description = "The domain used by Zimperium in GCP"
  type        = string
  default     = "zmpr.co"
}