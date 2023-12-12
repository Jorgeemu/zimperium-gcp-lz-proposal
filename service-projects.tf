module "cs-svc-gcp-prod--zconsole-poc" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "gcp-prod--zconsole-poc"
  project_id      = "gcp-prod--zconsole-poc"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Production"]

  shared_vpc = module.cs-vpc-host-prod-pa548-aq297.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-grupitoparaborrar.name
  group_role = "roles/viewer"
}

module "cs-svc-gcp-prod2--zconsole-poc" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "gcp-prod2--zconsole-poc"
  project_id      = "gcp-prod2--zconsole-poc"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Production"]

  shared_vpc = module.cs-vpc-host-prod-pa548-aq297.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-grupitoparaborrar2.name
  group_role = "roles/viewer"
}

module "cs-svc-quoum-team-1-nonprod-svc-onf9" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "quoum-team-1-nonprod-svc"
  project_id      = "quoum-team-1-nonprod-svc-onf9"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["non-prod"]

  shared_vpc = module.cs-vpc-host-nonprod-pa548-aq297.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-quoum-team-1-nonprod-svc.name
  group_role = "roles/viewer"
}

module "cs-svc-nonprod2-svc-8ze9" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "nonprod2-service"
  project_id      = "nonprod2-svc-8ze9"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["non-prod"]

  shared_vpc = module.cs-vpc-host-nonprod-pa548-aq297.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-nonprod2-service.name
  group_role = "roles/viewer"
}
