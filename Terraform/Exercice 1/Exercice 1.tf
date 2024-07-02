# Exercice 1

resource "null_resource" "exercice1" {
    provisioner "local-exec" {
        command = "echo 'Star Wars' > film.txt"
    }
