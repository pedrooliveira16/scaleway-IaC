resource "scaleway_instance_ip" "ip" {}

resource "scaleway_instance_server" "patada" {
  name          = var.server_name
  ip_id         = scaleway_instance_ip.ip.id
  image         = var.image_id 
  type          = var.instance_type
  enable_ipv6   = true
  state         = "started"
  security_group_id= scaleway_instance_security_group.sg.id

  tags = [
      var.server_name
  ]

  root_volume {
    delete_on_termination = true
    size_in_gb = var.volume_size
  }
}

resource "scaleway_instance_security_group" "sg" {
  name                      = "patada-sg"
  description               = "Default SG for the server"
  inbound_default_policy    = "drop"
  outbound_default_policy   = "accept"

  inbound_rule {
    action = "accept"
    port = 22
  }
  
  inbound_rule {
    action = "accept"
    port = 80
  }

  inbound_rule {
    action = "accept"
    port = 443
  }

  inbound_rule {
    action = "accept"
    protocol = "ICMP"
  }
}