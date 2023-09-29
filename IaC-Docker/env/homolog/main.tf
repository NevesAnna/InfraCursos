module "homologacao" {
    source = "../../infra"

    nome = "homologacao"
    descricao = "Aplicacao-de-homologacao"
    max = 3
    maquina = "t2.micro"
    ambiente = "ambiente-de-homologacao"
  
}