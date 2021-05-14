resource "aws_instance" "DEMO" {
        ami = "${lookup(var.ami,var.region)}"
        instance_type = "t2.micro"
	key_name = "tfaws"
	
	provisioner "local-exec" {
		command = "echo ${aws_instance.DEMO.public_ip} >> ip.txt" 
	}
}
output "ModuleIP" {
	value = "${aws_instance.DEMO.public_ip}"
}
