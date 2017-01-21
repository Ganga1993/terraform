provider "aws" {
	access_key = "$access_key"
	secret_key = "$secret_key"
	region = "us-west-2"
}

resource "aws_instance" "windows_ami"{
	ami	= "${var.ami_name}"
	instance_type = "${var.instance_type}"
	key_name = "ganga_testing"
	vpc_security_group_ids = "${split(",", var.security_groups)}"
	associate_public_ip_address = "true"
	iam_instance_profile = "${var.iam_instance_pofile}"
	tags{
		name = "gangadhar"
		owner = "P H Gangadhar"
	}
}