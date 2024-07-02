<<<<<<< HEAD
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
=======
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
>>>>>>> f21e5ca60ea3aa4f7609e5b2be8b6a400e3fc233
}