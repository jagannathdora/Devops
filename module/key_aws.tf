variable "region" {
	default = "us-east-2"
}

variable "ami" {
	type = map
	default = {
		us-east-2 = "ami-00399ec92321828f5"
		us-east-1 = "ami-0d11c6fa329e01c8b"
		us-west-1 = "ami-0658a4dc52247ba9a"
		us-west-2 = "ami-03491fd44b6de0454"
	}
}
