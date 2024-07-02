<<<<<<< HEAD
# Exercice 1

resource "null_resource" "exercice1" {
    provisioner "local-exec" {
        command = "echo 'Star Wars' > film.txt"
    }
=======
# Exercice 1

resource "null_resource" "exercice1" {
    provisioner "local-exec" {
        command = "echo 'Star Wars' > film.txt"
    }
>>>>>>> f21e5ca60ea3aa4f7609e5b2be8b6a400e3fc233
}