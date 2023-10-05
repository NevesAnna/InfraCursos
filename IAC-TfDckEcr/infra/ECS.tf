module "ecs_cluster" {
  source = "terraform-aws-modules/ecs/aws//modules/cluster"

  cluster_name = "ecs-fargate"

   fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = 1
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = 1
      }
    }
  }
}
module "ecs_service" {
  source = "terraform-aws-modules/ecs/aws//modules/service"
  version = "5.2.1"

  name   = "Django-API"
  cluster_arn = module.ecs_cluster.arn

  cpu    = 512
  memory = 1024

  container_definitions = {

    producao = {
      cpu       = 512
      memory    = 1024
      essential = true
      image     = "918649731405.dkr.ecr.us-west-2.amazonaws.com/producao:v1"
      port_mappings = [
        {
           name          = "portmapping"
           containerPort = 8000
           hostPort      = 8000
           protocol      = "http"
        }
      ]
      load_balancer = {
        service = {
        target_group_arn = aws_lb_target_group.alvo.arn
        container_name   = "producao"
        container_port   = 8000
    }
  }     
      subnet_ids = [module.vpc.private_subnets, 0]
      security_group_rules = [aws_security_group.privado.id]
    }
  }
}


    
