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
    default= "fr-par"
}

variable "zone" {
    default = "fr-par-1"
}

variable "volume_size" {
    default= "20"
}

variable "image_id" {
    default = "0e9da4ee-3f63-422f-8ccf-333d94371fb5"
}

variable "instance_type" {
    default = "DEV1-S"
}

variable "server_name" {
    default = "monokuma.pt"
}