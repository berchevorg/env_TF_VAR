variable "length" {}
variable "name" {}

resource "random_pet" "name" {
 length    = var.length
 separator = "-"
}

provisioner "local-exec" {
command = <<EOT
echo $TF_VAR_name
EOT
}
