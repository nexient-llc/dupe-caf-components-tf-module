package main

deny[msg] {
    resource_change := input.resource_changes[_]
    resource_change.provider_name != "registry.terraform.io/hashicorp/aws"
    resource_change.provider_name != "registry.terraform.io/hashicorp/random"
    resource_change.provider_name != "registry.terraform.io/hashicorp/azurerm"
    resource_change.provider_name != "registry.terraform.io/hashicorp/google"
    resource_change.provider_name != "registry.terraform.io/sumologic/sumologic"
    resource_change.provider_name != "registry.terraform.io/hashicorp/local"
    resource_change.provider_name != "registry.terraform.io/hashicorp/null"

    msg := sprintf("Provider is not allowed: %s", [resource_change.provider_name])
}
