variable "netlify_token" {
  description = "Netlify personal access token"
  type        = string
  sensitive   = true
}


variable "site_name" {
  description = "Name of the site managed by Terraform"
  type        = string
  default     = "terraformnetlifysite"  # Default name for the site, can be overridden
}