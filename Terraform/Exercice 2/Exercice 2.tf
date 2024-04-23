# Exercice 2

variable "movie_name" {
  type    = string
  default = "Avatar"
}


resource "null_resource" "Exercice2" {
    triggers = {
        movie_name = var.movie_name
    }

    provisioner "local-exec" { 
        command = "echo '${var.movie_name}' > film.txt"
    }
}


output "file_created" {
  value = "Fichier film.txt créé !"
}