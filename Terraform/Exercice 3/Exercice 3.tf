<<<<<<< HEAD
# Exercice 3

variable "movies_name" {
  type = map(string)
  default = {
    "Avatar" = "Commentaire Avatar",
    "Star Wars" = "Commentaire Star Wars",
    "Le Seigneur des Anneaux" = "Commentaire Le Seigneur des Anneaux"
  }
}


resource "null_resource" "Exercice3" {
  for_each = var.movies_name

  triggers = {
    foo = each.value
  }

  provisioner "local-exec" {
    command = "echo '${each.key} : ${each.value}' >> Movies.txt"
  }
}


output "file_created" {
  value = "Fichier Movies.txt créé !"
}
=======
# Exercice 3

variable "movies_name" {
  type    = map(string)
  default = {
    "Avatar" = "Commentaire Avatar",
    "Star Wars" = "Commentaire Star Wars",
    "Le Seigneur des Anneaux" = "Commentaire Le Seigneur des Anneaux"
  }
}


resource "null_resource" "Exercice3" {
  for_each = var.movies_name

  triggers = {
    foo = each.value
  }

  provisioner "local-exec" {
    command = "echo '${each.key} : ${each.value}' >> Movies.txt"
  }
}


output "file_created" {
  value = "Fichier Movies.txt créé !"
}
>>>>>>> f21e5ca60ea3aa4f7609e5b2be8b6a400e3fc233
