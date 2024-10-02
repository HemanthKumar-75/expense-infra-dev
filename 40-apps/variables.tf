variable "project" {
  default = "expense"
}

variable "envinronment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    project = "Expense"
    envinronment = "dev"
    Terraform = true
    created-by = "HemanthKumar"
  }
}

variable "mysql_tags" {
  default = {
    component = "mysql"
    }
}

variable "backend_tags" {
  default = {
    component = "backend"
  }
}

variable "frontend_tags" {
  default = {
    component = "frontend"
  }
}

variable "ansible_tags" {
  default = {
    component = "ansible"
  }
}

variable "zone_name" {
  default = "hemanthkumar.online"
}