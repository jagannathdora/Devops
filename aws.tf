/*############ Instance created but wont SSH #######*/
/*provider "aws" {
	access_key = "${var.access_key}"
	secret_key = "${var.access_secret}"
	region = "us-east-2"
}
resource "aws_instance" "DEMO" {
	ami = "${lookup(var.ami,var.region)}"
	instance_type = "t2.micro"
}*/
/*#################### SSH To the Instance ######################*/
provider "aws" {
#  access_key = var.access_key
#  secret_key = var.access_secret
  region     = "us-east-2"
}

resource "aws_key_pair" "login" {
  key_name   = var.private_key
  public_key = file("${var.public_key}")
}
resource "aws_instance" "DEMO" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.login.key_name
  // Provisoner
  provisioner "file" {
    source      = "first.tf"
    destination = "/tmp/"
  }
  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("${var.private_key}")
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.DEMO.public_ip} >> ip.txt"
  }
}
output "IP" {
  value = aws_instance.DEMO.public_ip
}
