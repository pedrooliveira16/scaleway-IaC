terraform {
  backend "local" {
    path = "./state.tfstate"
  }

  required_version = ">=0.12.0"
  required_providers {
    scaleway = "~> 1.13"
  }
}
