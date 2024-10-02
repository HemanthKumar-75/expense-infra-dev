data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project}/${var.envinronment}/mysql_sg_id"
}

data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project}/${var.envinronment}/backend_sg_id"
}

data "aws_ssm_parameter" "frontend_sg_id" {
  name = "/${var.project}/${var.envinronment}/frontend_sg_id"
}

data "aws_ssm_parameter" "ansible_sg_id" {
  name = "/${var.project}/${var.envinronment}/ansible_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/public_subnet_ids"
}

data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/database_subnet_ids"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/private_subnet_ids"
}

data "aws_ami" "ec2_id" {

    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}