resource "aws_ecr_repository" "repositorio" {
  name                 = var.nome_repositorio
  image_tag_mutability = "MUTABLE"
}