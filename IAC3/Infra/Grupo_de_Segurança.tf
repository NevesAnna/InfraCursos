resource "aws_security_group" "acesso_geral" {
  name = var.grupoDeSeguranca
  ingress{
    cidr_blocks = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks = ["::/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  egress{
    cidr_blocks = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks = ["::/0"]
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
  tags = {
    name = "acesso_geral"
  }
}