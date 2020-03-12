terraform {
  backend "s3" {
    bucket                      = "patada-terraform-state"
    key                         = "s3/state.tfstate"
    region                      = "nl-ams"
    endpoint                    = "https://s3.nl-ams.scw.cloud"
    access_key                  = "" //fill before running plan/apply
    secret_key                  = "" //fill before running plan/apply
    skip_credentials_validation = true
    skip_region_validation      = true
  }

  required_version = ">=0.12.0"
  required_providers {
    scaleway = "~> 1.13"
  }
}