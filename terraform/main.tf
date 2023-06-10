module "Trade_Dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe+dev@onmulticloud.com"
    AccountName               = "Trade_Dev"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "joe+dev@onmulticloud.com"
    SSOUserFirstName          = "Trade_Dev"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "Trade Cloud" = "dev"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Trade_Dev"
}

module "Trade_test" {
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
module "Trade_Prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe+prod@onmulticloud.com"
    AccountName               = "Trade_Prod"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "joe+prod@onmulticloud.com"
    SSOUserFirstName          = "Trade_Prod"
    SSOUserLastName           = "Prod"
  }

  account_tags = {
    "Trade Cloud" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Trade_Prod"
}
