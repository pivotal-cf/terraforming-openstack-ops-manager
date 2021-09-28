variable "env_name" {
  type        = string
  description = "The environment name."
  default     = ""
}

variable "project" {
  type        = string
  description = "The name of the tenant (Identity v2) or project (Identity v3) to login with."
}

variable "cacert_file" {
  type        = string
  description = "The contents of the Openstack API CA."
}

variable "username" {
  type        = string
  description = "The username to login with."
}

variable "password" {
  type        = string
  description = "The password to login with."
}

variable "region" {
  type        = string
  description = "The region of the OpenStack cloud to use."
}

variable "az" {
  type        = string
  description = "The availability zone for the Ops Manager instance."
}

variable "dns_nameservers" {
  type        = list(string)
  description = "An array of DNS name servers to be used by hosts in the subnet."
  default     = [""]
}

variable "auth_url" {
  type        = string
  description = "The identity authentication url."
}

variable "domain" {
  type        = string
  description = "The name of the domain to scope to (Identity v3)."
  default     = "default"
}

variable "key" {
  type        = string
  description = "The contents of the client private key file for SSL client authentication."
}

variable "keypair" {
  type        = string
  description = "The name of an existing key pair to put on the Ops Manager instance."
}

variable "external_network_name" {
  type        = string
  description = "The name of the external network."
}

variable "internal_cidr" {
  type        = string
  description = "CIDR representing IP range for the subnet."
}

variable "flavor_name" {
  type        = string
  description = "The name of the desired flavor for the Ops Manager instance."
  default     = "m1.large"
}

variable "ops_manager_image" {
  type        = string
  description = "The local file path to the raw image to boot the Ops Manager instance."
}

variable "optional_ops_manager" {
  type        = string
  description = "Deploy a second Ops Manager instance."
  default     = 0
}

variable "optional_ops_manager_image" {
  type        = string
  description = "The local file path to the raw image to boot the second Ops Manager instance."
  default     = ""
}

