module "Trade_Deve" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe+deve@onmulticloud.com"
    AccountName               = "Trade_Deve"
    ManagedOrganizationalUnit = "Custom"
    SSOUserEmail              = "joe+deve@onmulticloud.com"
    SSOUserFirstName          = "Trade_Deve"
    SSOUserLastName           = "deve"
  }

  account_tags = {
    "Trade Cloud" = "deve"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Trade_Deve"
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
