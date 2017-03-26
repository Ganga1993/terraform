resource "aws_security_group" "ganga_security_group"{
	name = "http_security_group"
	description = "http Security Group"
	vpc_id = ""
	
	ingress{
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["10.0.0.0/8"]
	}
	
	tags{
		name = "my_security_group"
		key = "testing"
	}
}

resource "aws_security_group_rule" "allow_81"{
	type = "ingress"
	from_port = 81
	to_port = 81
	protocol = "tcp"
	cidr_blocks = ["10.0.0.0/8"]
	security_group_id = "${aws_security_group.ganga_security_group.id}"
}