# Exercice 8

variable "command_install" {
    type = string
    description = ""
    default = "choco install figlet-go"
}


variable "command_execute" {
    type = string
    description = ""
    default = "figlet Bonjour"
}


resource "null_resource" "Exercice8" {
  triggers = {
    _commande = var.command_install
    _execute = var.command_execute
  }

  provisioner "local-exec" {
    command = "${var.command_install}  |  ${var.command_execute}"
  }
}


output "command_executed" {
  value = "Commande d'installation terminée !"
}