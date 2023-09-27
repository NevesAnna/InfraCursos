module "aws-dev" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-DEV" 
    nomeMaquina = "DevInstance"
}
output "IP" {
    value = module.aws-dev.IP_Publico  
}