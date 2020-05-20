resource "openstack_compute_instance_v2" "icinga-helper" {
	name = "icinga-helper"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-master" {
	count = 2
	name = "icinga-master-${count.index + 1}"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-sat-orange" {
	count = 2
	name = "icinga-sat-orange-${count.index + 1}"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-sat-apple" {
	count = 2
	name = "icinga-sat-apple-${count.index + 1}"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-sat-boskoop" {
	count = 2
	name = "icinga-sat-boskoop-${count.index + 1}"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-agents-master" {
	name = "icinga-agents-master"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.xxlarge"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-agents-sat-orange" {
	name = "icinga-agents-sat-orange"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.xxlarge"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-agents-sat-apple" {
	name = "icinga-agents-sat-apple"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.xxlarge"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "icinga-agents-sat-boskoop" {
	name = "icinga-agents-sat-boskoop"
	image_name = "Debian 10 (AK II)"
	flavor_name = "s1.xxlarge"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default", "Ping and SSH External" ]
	key_pair = "${var.openstack_keypair}"
}
