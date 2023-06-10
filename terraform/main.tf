module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe+test@onmulticloud.com"
    AccountName               = "Trade_test"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "joe+test@onmulticloud.com"
    SSOUserFirstName          = "Trade_test"
    SSOUserLastName           = "test"
  }

  account_tags = {
    "Trade Cloud" = "test"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Trade_test"
}
