module "cs-common" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.2"

  parent = "organizations/${var.org_id}"
  names = [
    "common",
  ]
}

module "cs-envs" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.2"

  parent = "organizations/${var.org_id}"
  names = [
    "prod",
    "non-prod",
  ]
}

module "cs-sub-envs" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.2"

  parent = "folders/${module.cs-envs["non-prod"].id}"
  names = [
    "sbx",
    "dev",
  ]
}