# Exercice 11

variable "ip_vm" {
    type = string
    default = "192.168.237.128"
}


variable "user" {
    type = string
    default = "clement"
}


variable "password" {
    type = string
}


resource "null_resource" "Exercice11" {

    provisioner "remote-exec" {

        connection {
            type = "ssh"
            host = var.ip_vm
            user = var.user
            password = var.password
            timeout = "1m"
        }

        inline = [
            "sudo apt-get install -y figlet",
            "figlet Bonjour"
        ]
    }
}