# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {
  user_project_override = true
  billing_project       = ""
}

# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-grp-gcp-organization-admins" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-organization-admins@${var.org_domain_name}"
  display_name = "grp-gcp-organization-admins"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-organization-security-admins" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-organization-security-admins@${var.org_domain_name}"
  display_name = "grp-gcp-organization-security-admins"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-billing-admins" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-billing-admins@${var.org_domain_name}"
  display_name = "grp-gcp-billing-admins"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-sre-admins" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-sre-admins@${var.org_domain_name}"
  display_name = "grp-gcp-sre-admins"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-devops-admins" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-devops-admins@${var.org_domain_name}"
  display_name = "grp-gcp-devops-admins"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-developers" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-developers@${var.org_domain_name}"
  display_name = "grp-gcp-developers"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-grp-gcp-billing-viewer" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "grp-gcp-billing-viewer@${var.org_domain_name}"
  display_name = "grp-gcp-billing-viewer"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}