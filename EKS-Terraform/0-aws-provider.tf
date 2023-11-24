provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.26.0"
    }
    kubectl = {
        source = "gavinbunney/kubectl"
        version = ">=1.14.0"
    }
    helm = {
        source = "hashicorp/helm"
        version = ">=2.6.0"
    }
   
  }
   backend "s3" {
        bucket = "roboshophari"
        key    = "kubernetes"
        region = "us-east-1"
        dynamodb_table = "haritable"
  }
  required_version = "~> 1.0 "
}