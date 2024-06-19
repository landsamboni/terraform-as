terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.54.0" #esta es la version de AWS en terraform
    }
  }
  required_version = "~>1.8.0" #esta es la version de terraform
}

provider "aws" {
  region = "us-east-1"
  #se definen las tags globales que apareceran en cada recurso
  default_tags {
    tags = var.tags
  }
}