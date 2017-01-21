variable "ami_name" {
	description = "AMI NAME"
	default = "ami-1562d075"
}
variable "instance_type" {
	description = "Instance type of the instance"
	default = "t2.micro"
}
variable "iam_instance_pofile" {
	description = "Instance Profile of IAM"
	default = "ssmrole"
}
variable "security_groups" {
	description = "Security Groups of the instance"
	default = "sg-96cae2ef"
}
