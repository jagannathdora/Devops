module "aws_multi" {
  source = "./module"
  count  = "5"
}
/*output "console" {
	value = "${module.aws_multi.ModuleIP}"

}*/
