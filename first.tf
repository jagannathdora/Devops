#string type
/*var.myvar*/
variable "myvar" {
  type    = string
  default = "hello!!"
}

//Map  to string
/*var.app['myapp']*/
variable "app" {
  type = map(string)
  default = {
    myapp = "app1"
  }
}
#List type
/*element(var.mylist, 1)
2
var.mylist
*/
variable "mylist" {
  type    = list(any)
  default = [1, 2, 3]
}
