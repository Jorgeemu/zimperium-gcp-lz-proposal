module "cs-org-iam-0-billing-viewer" {
  source        = "terraform-google-modules/iam/google//modules/organizations_iam"
  organizations = [data.google_organization.org.id]
  mode          = "authoritative"
  version = "~> 7.4"

  bindings = {
    "roles/billing.viewer" = [
      "group:${module.cs-gg-grp-gcp-sre-admins.id}",
      "group:${module.cs-gg-grp-gcp-devops-admins.id}",
      "group:${module.cs-gg-grp-gcp-developers.id}",

    ]
  }
}

module "cs-folders-iam-0-nonprod" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["non-prod"],
  ]
  bindings = {
    "roles/owner" = [
      "group:${module.cs-gg-grp-gcp-sre-admins.id}",
      "group:${module.cs-gg-grp-gcp-devops-admins.id}",
    ]
  }
}

module "cs-folders-iam-0-prod" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["prod"],
  ]
  bindings = {
    "roles/owner" = [
      "group:${module.cs-gg-grp-gcp-sre-admins.id}",
    ],
    "roles/viewer"=[
     "group:${module.cs-gg-grp-gcp-devops-admins.id}",

    ]
  }
}

module "cs-org-iam-0-org-admns" {
  source        = "terraform-google-modules/iam/google//modules/organizations_iam"
  organizations = [data.google_organization.org.id]
  mode          = "authoritative"
  version = "~> 7.4"
  bindings = {
    "roles/cloudasset.owner" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/cloudsupport.admin"=[
     "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/compute.osAdminLogin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/compute.osLoginExternalUser" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/owner" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/resourcemanager.folderAdmin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/resourcemanager.organizationAdmin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/resourcemanager.projectCreator" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/resourcemanager.tagAdmin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/orgpolicy.policyAdmin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],
    "roles/compute.xpnAdmin" = [
      "group:${module.cs-gg-grp-gcp-organization-admins.id}",
    ],

  }
}
