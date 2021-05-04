resource "openstack_compute_secgroup_v2" "bosh" {
  name        = "bosh-${var.project}"
  description = "${var.project} BOSH Director Security Group"
  region      = var.region

  // SSH
  rule {
    ip_protocol = "tcp"
    from_port   = "22"
    to_port     = "22"
    cidr        = "0.0.0.0/0"
  }

  // HTTP
  rule {
    ip_protocol = "tcp"
    from_port   = "80"
    to_port     = "80"
    cidr        = "0.0.0.0/0"
  }

  // HTTPS
  rule {
    ip_protocol = "tcp"
    from_port   = "443"
    to_port     = "443"
    cidr        = "0.0.0.0/0"
  }

  // NATS
  rule {
    ip_protocol = "tcp"
    from_port   = "4222"
    to_port     = "4222"
    cidr        = "0.0.0.0/0"
  }

  // UAA
  rule {
    ip_protocol = "tcp"
    from_port   = "6868"
    to_port     = "6868"
    cidr        = "0.0.0.0/0"
  }

  // CredHub
  rule {
    ip_protocol = "tcp"
    from_port   = "8443"
    to_port     = "8443"
    cidr        = "0.0.0.0/0"
  }

  // CredHub
  rule {
    ip_protocol = "tcp"
    from_port   = "8844"
    to_port     = "8844"
    cidr        = "0.0.0.0/0"
  }

  // BOSH Health Monitor
  rule {
    ip_protocol = "tcp"
    from_port   = "8853"
    to_port     = "8853"
    cidr        = "0.0.0.0/0"
  }

  // BOSH Blobstore
  rule {
    ip_protocol = "tcp"
    from_port   = "25250"
    to_port     = "25250"
    cidr        = "0.0.0.0/0"
  }

  // BOSH Registry
  rule {
    ip_protocol = "tcp"
    from_port   = "25777"
    to_port     = "25777"
    cidr        = "0.0.0.0/0"
  }

  // BOSH Director
  rule {
    ip_protocol = "tcp"
    from_port   = "25555"
    to_port     = "25555"
    cidr        = "0.0.0.0/0"
  }

  // loopback
  rule {
    ip_protocol = "tcp"
    from_port   = "1"
    to_port     = "65535"
    self        = "true"
  }
}

