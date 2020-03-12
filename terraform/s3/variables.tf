variable "access_key" {
    default = "" // fill this in from the 1password secret "Terraform Scaleway Secrets" before applying
}

variable "secret_key" {
    default = "" // fill this in from the 1password secret "Terraform Scaleway Secrets" before applying
}

variable "organization_id" {
    default = "" // fill this in from the 1password secret "Terraform Scaleway Secrets" before applying
}

variable "region" {
    default= "nl-ams"
}

variable "zone" {
    default = "nl-ams-1"
}

variable "backup_bucket_name" {
    default = "patada-backups"
}

variable "terraform_state_bucket_name" {
    default = "patada-terraform-state"
}