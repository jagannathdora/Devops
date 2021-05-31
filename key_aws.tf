#variable "KEY" {
#	default = "AWSWJNDJNXNR"  it will directly pick the value
#}

/* below two will fetch from vars file*/

#variable "access_key" {}
#variable "access_secret" {}
variable "region" {
  default = "us-east-2"
}

variable "ami" {
  type = map(any)
  default = {
    us-east-2 = "ami-00399ec92321828f5"
    us-east-1 = "ami-0d11c6fa329e01c8b"
    us-west-1 = "ami-0658a4dc52247ba9a"
    us-west-2 = "ami-03491fd44b6de0454"
  }
}
variable "private_key" {}
variable "public_key" {}
