# Exercice 6

variable "commande" {
    type = string
    description = ""
    default = "choco install figlet-go"
}


resource "null_resource" "Exercice6" {
  triggers = {
    "key" = var.commande
  }

  provisioner "local-exec" {
    command = "${var.commande}"
  }
}


output "command_executed" {
  value = "Commande d'installation terminée !"
}