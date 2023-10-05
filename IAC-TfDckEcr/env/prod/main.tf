module "prod" {
    source = "../../infra"
    nome_repositorio = "producao"
    cargoIAM = "producao"
    ambiente = "ambdeproducao"
  
}
output "IP_alb" {
    value = module.prod.IP     
}