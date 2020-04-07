variable "openstack_auth_url" {
	description = "The endpoint url to connect to OpenStack."
	default = "https://cloud.netways.de:5000/v3/"
}

variable "openstack_tenant_name" {
	description = "The name of the Tenant."
	default = "2310-openstack-c3a60"
}

variable "openstack_user_name" {
	description = "The username for the Tenant."
	default = "aklimov"
}

variable "openstack_password" {
	description = "The password for the Tenant."
}

variable "tenant_network" {
	description = "The network to be used."
	default = "icinga-testing-network"
}

variable "openstack_keypair" {
	description = "The keypair to be used."
	default = "AK"
}

variable "openstack_image" {
	default = "6bb65c5a-c5c5-47db-b58d-cbd2536b4701"
}
