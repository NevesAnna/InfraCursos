module "aws-prod" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-Prod" 
    nomeMaquina = "TerraformProd2"
    grupoDeSeguranca = "producao"
    minimo = 1
    maximo = 10
    nomeGrupo = "Prod"
    producao = true
}
