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
    default = "nl-ams"
}

variable "zone" {
    default = "nl-ams-1"
}

variable "volume_size" {
    default = "20"
}

variable "image_id" {
    default = "54b1ac86-7e6e-4a78-a7dc-5a4ee64aa386"
}

variable "instance_type" {
    default = "DEV1-S"
}

variable "server_name" {
    default = "monokuma.pt"
}