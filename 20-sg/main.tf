module "mysql_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "Mysql"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.sg_tags
}

module "backend_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "Backend"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.backend_sg_tags
}

module "frontend_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "frontend"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.frontend_sg_tags
}