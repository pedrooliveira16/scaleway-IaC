resource "scaleway_object_bucket" "patada-backups" {
    name = var.backup_bucket_name
    acl = "private"
}

resource "scaleway_object_bucket" "terraform-state" {
    name = var.terraform_state_bucket_name
    acl  = "private"
}