module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe+dev@onmulticloud.com"
    AccountName               = "Trade_dev"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "joe+dev@onmulticloud.com"
    SSOUserFirstName          = "Trade_dev"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Trade_dev"
}
