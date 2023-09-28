module "aws-prod" {
    source = "../../Infra"
    instancia = "t2.micro"
    regiao_aws = "us-west-2"
    chave = "IaC-Prod" 
    nomeMaquina = "TerraformProd2"
}
output "IP-Prod" {
    value = module.aws-prod.IP_Publico  
}