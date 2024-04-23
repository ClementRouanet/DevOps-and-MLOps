# Exercice 4

variable "movies_name" {
  type    = list(string)
  default = ["Avatar", "Star Wars", "Le Seigneur des Anneaux"]
}


resource "null_resource" "Exercice4" {
  count = "${length(var.movies_name)}"

  provisioner "local-exec" {
    command = "echo '${element(var.movies_name, count.index)}' >> Movies.txt"
  }
}


output "file_created" {
  value = "Fichier Movies.txt créé !"
}