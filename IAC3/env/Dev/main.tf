module "aws-dev" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-DEV" 
    nomeMaquina = "DevInstance"
    grupoDeSeguranca = "Dev"
    minimo = 0
    maximo = 1
    nomeGrupo = "DEV"
    producao = false
}
