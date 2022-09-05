variable "length" {}
variable "name" {}

resource "random_pet" "name" {
 length    = var.length
 separator = "-"
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "echo $name"
  }
}
