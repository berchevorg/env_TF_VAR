variable "length" {}

resource "random_pet" "name" {
 length    = var.length
 separator = "-"
}
